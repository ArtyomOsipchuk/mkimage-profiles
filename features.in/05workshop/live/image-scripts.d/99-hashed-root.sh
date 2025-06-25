PASS=$(openssl passwd -1 -salt "randomrandom" "math_is_easy_ha_ha_ha")
usermod -p "$PASS" root
PASS=$(openssl passwd -1 -salt "randomrandom" "altlinux")
usermod -p "$PASS" altlinux
