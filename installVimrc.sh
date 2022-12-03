#!/bin/bash

RCFILE=~/.vimrc
INSTALL=false

echo "이 스크립트는 사전 설정된 .vimrc 파일을 설치하는 스크립트입니다."
echo ".vimrc를 설치할까요?"
read -p "[y/N] : " response
case $response in
	[Yy]* ) INSTALL=true; break;;
	* ) INSTALL=false;;
esac
if [ "$INSTALL" = true ]; then
	if test -f "$RCFILE"; then
		echo ".vimrc 파일이 존재합니다. ~/.vimrc.old로 백업합니다."
		mv ~/.vimrc ~/.vimrc.old && echo "백업이 완료되었습니다."
	fi
	curl -s -o ~/.vimrc https://raw.githubusercontent.com/Junsang-Mun/dotfiles/main/.vimrc
	vim -c 'PlugInstall' \
		-c 'qa!'
	echo '설치가 완료되었습니다.'
	exit;
else
	echo '설치를 취소합니다.'
	exit;
fi
