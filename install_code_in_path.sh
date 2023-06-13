echo "This shell script installs 'code' command in PATH without sudo privileges."
echo "Do you wish to continue?"
read -p "[y/N] : " response
case $response in
	[Yy]* ) INSTALL=true; break;;
	* ) INSTALL=false;;
esac
if [ "$INSTALL" = true ]; then
	echo 'export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"' >> ~/.zshrc
	echo 'Install complete. Run command `zsh` to apply changes.'
	exit;
else
	echo 'Aborting...'
	exit;
fi

