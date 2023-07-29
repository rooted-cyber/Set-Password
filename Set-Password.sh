ban() {
echo -e "\033[1;92m"
random
toilet -f font TERMUX
printf "\n\t\033[10m [::]\033[1;93m set password in termux\033[0m [::]\n"
}
pbs() {
cat >> ~/.bashrc << EOF
trap 'printf "\n";pa;exit 1' 2
pa() {
random
echo -e -n "Enter password:\033[0m "
read p
case $p in
$a)bash ;;
*)random;echo "error password";pa ;;
esac
}
pa
EOF
}
pzs() {
cat >> ~/.zshrc << EOF
trap 'printf "\n";pa;exit 1' 2
pa() {
random
echo -e -n "Enter password:\033[0m "
read p
case $p in
$a)zsh ;;
*)random;echo "error password";pa ;;
esac
}
pa
EOF
}
zss() {
cd ~
if [ -e .zshrc ];then
pzs
else
pbs
fi
}
a() {
ban
random
echo -e -n "Enter new password:\033[0m "
read a
zss
}
a