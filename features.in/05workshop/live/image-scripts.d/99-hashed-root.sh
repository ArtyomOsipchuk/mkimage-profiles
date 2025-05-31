PASS=$(openssl passwd -1 -salt "randomprac" "prac")
usermod -p "$PASS" root
