#!/usr/bin/apt-get script
-- This script will collect all unallowed duplicated pkgs and remove the
-- eldest, keeping the newest. It must be plugged in the slot
-- Scripts::AptGet::Command
--
-- Author: Vladimir D. Seleznev <vseleznv@altlinux.org>
-- Copyright (c) 2019 Vladimir D. Seleznev <vseleznv@altlinux.org>
-- Copyright (c) 2019 ALT Linux Team
-- Copyright (c) 2019 BaseALT Ltd

if script_slot == "Scripts::AptGet::Help::Command" then
    print(_("   dedup - Remove unallowed duplicated pkgs"))
    return
end

if command_args and command_args[1] ~= "dedup" then return end
command_consume = 1

confset("Apt::Get::Fix-Broken", "true")
confset("RPM::Allow-Duplicated-Warning", "false")
allowed_dups = confgetlist("RPM::Allow-Duplicated")

function isAllowed(pkg)
    for i, pattern in pairs(allowed_dups) do
	-- ugly hack: lua is bad at pattern matching
	if os.execute("echo '"..pkg.."' |egrep -q '"..pattern.."'") then
	    return 1
	end
    end
    return nil
end

dups = {}

for i, pkg in pairs(pkglist()) do
    -- skip virtual pkgs
    if pkgisvirtual(pkg) then
	goto continue
    end

    -- duplicated packages, and they alone, contain '#'
    name = pkgname(pkg)
    if not string.find(name, '#') then
	goto continue
    end

    -- installed packages, and they alone, have ver
    ver = pkgvercur(pkg)
    if not ver then
	goto continue
    end

    -- skip allowed duplicated pkgs
    real_name = string.gsub(name, "#.*$", '')
    if isAllowed(real_name) then
	print(name.." is allowed duplicate")
	goto continue
    end

    -- store version of found installed duplicated pkg
    if not dups[real_name] then
	dups[real_name] = ver
	goto continue
    end

    -- compare versions of duplicated pkgs, remove the eldest
    if verstrcmp(verstr(dups[real_name]), verstr(ver)) > 0 then
	markremove(pkg)
    else
	markremove(verpkg(dups[real_name]))
	dups[real_name] = ver
    end

    ::continue::
end

