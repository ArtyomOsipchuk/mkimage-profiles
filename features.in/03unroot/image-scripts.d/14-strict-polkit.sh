sudo touch /etc/polkit-1/localauthority/50-local.d/50-strict-auth.pkla
sudo /etc/polkit-1/localauthority/50-local.d/50-strict-auth.pkla < """
[Authorization]
Identity=unix-user:*
Action=org.freedesktop.login1.power-off;org.freedesktop.login1.reboot;org.freedesktop.login1.hibernate;org.freedesktop.login1.suspend
ResultAny=no
ResultInactive=no
ResultActive=auth_admin_keep

[Disable user admin]
Identity=unix-group:admin
Action=*
ResultAny=no
ResultInactive=no
ResultActive=no
"""

sudo touch /etc/polkit-1/rules.d/50-strict-root.rules
sudo /etc/polkit-1/rules.d/50-strict-root.rules < """
polkit.addRule(function(action, subject) {
    if (action.id == "org.freedesktop.policykit.exec" && subject.user == "root") {
        return polkit.Result.AUTH_ADMIN_KEEP;
    }
});
"""
