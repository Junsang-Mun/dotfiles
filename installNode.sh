echo "이 스크립트는 Node.js LTS를 설치합니다. Node.js의 LTS 버전을 설치할까요?"
read -p "[y/N] : " response

case $response in
	[Yy]* ) INSTALL=true;;
	* ) INSTALL=false;;
esac

if ! command -v node &>/dev/null && [ "$INSTALL" = true ]
then
	echo "Node.js LTS를 설치합니다."
	cd ~
	mkdir -p ~/bin
	cd
	export N_PREFIX=$(pwd)
	curl -fsSL https://raw.githubusercontent.com/tj/n/master/bin/n | bash -s lts
	echo "# bin folder for node.js">>~/.zshrc
	echo 'export PATH="$PATH:$HOME/bin"' >> ~/.zshrc
	echo '설치가 완료되었습니다.'
	exit;
elif [ "$INSTALL" = false ]
	then
	echo '사용자가 설치를 취소했습니다.'
	exit;
else
	echo '이미 Node가 설치되어 있습니다.'
	exit;
fi

