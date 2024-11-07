#!/usr/bin/apt-cache script
-- This script will list all installed packages which are not
-- required by any other installed package. It must be plugged
-- in the slot Scripts::AptCache::Command
--
-- Author: Gustavo Niemeyer <niemeyer@conectiva.com>

if script_slot == "Scripts::AptCache::Help::Command" then
    print(_("   list-nodeps - Show installed pkgs not required by other installed pkgs"))
    return
end

if command_args and command_args[1] ~= "list-nodeps" then return end
command_consume = 1

-- Collect dependencies from installed packages
deplist = {}
verlist = {}
for i, pkg in ipairs(pkglist()) do
    ver = pkgvercur(pkg)
    if ver then
        table.insert(verlist, ver)
        for i, dep in ipairs(verdeplist(ver)) do
            deptypes = {"depends", "predepends", "suggests", "recommends"}
            for i, dtype in ipairs(deptypes) do
                if dep.type == dtype then
                    for i, depver in ipairs(dep.verlist) do
                        deplist[verid(depver)] = true
                    end
                    break
                end
            end
        end
    end
end

-- Now list all versions which are not dependencies
for i, ver in ipairs(verlist) do
    if not deplist[verid(ver)] then
        name = pkgname(verpkg(ver))
        print(name)
    end
end

-- vim:ts=4:sw=4:et
