#!/usr/bin/apt-cache script
-- This script will list all installed packages which have version
-- newer then in repository. It must be plugged in the slot
-- Scripts::AptCache::Command
--
-- Author: Evgenii Terechkov <evg@altlinux.org>

if script_slot == "Scripts::AptCache::Help::Command" then
    print(_("   list-unreleased - Show installed pkgs newer than in repositories"))
    return
end

if command_args and command_args[1] ~= "list-unreleased" then return end
command_consume = 1

for i, pkg in pairs(pkglist()) do
    ver = pkgvercur(pkg)
    verlist = pkgverlist(pkg)
    if ver and not verisonline(ver)
       and #verlist == 2 then
        print(pkgname(pkg))
    end
end

-- vim:ts=4:sw=4:et
