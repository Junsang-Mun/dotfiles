RCFILE=~/.vimrc
echo ".vimrc 파일이 존재하는지 확인합니다."
if test -f "$RCFILE";then
	echo ".vimrc 파일이 존재합니다. 백업할까요?"
	read -p "[Y/n] : " response
	case $response in
		[Nn]* ) rm ~/.vimrc; break;;
		* ) mv ~/.vimrc ~/.vimrc.old && echo "백업이 완료되었습니다. ~/.vimrc.old 파일을 확인하세요.";;
	esac
fi
curl -s -o ~/.vimrc https://raw.githubusercontent.com/Junsang-Mun/dotfiles/main/.vimrc
vim -c 'PlugInstall' \
	-c 'qa!'
echo '설치가 완료되었습니다.'
