#/bin/bash
printf '\033c'
echo -e " \033[0;31m░█▀█░█▀▄░█▀▀░█░█░█▀█░█▀█░█▀█░█░█░▀█▀ \n ░█▀█░█▀▄░█░░░█▀█░█░█░█░█░█▀█░█░█░░█░ \n ░▀░▀░▀░▀░▀▀▀░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀░░▀░"
echo -e "\033[1m       ARCHISO to ARCH_RICED_UP \033[0m"

#CHECKING FOR DEPEDENCIES
printf "Checking dependencies.... "
dependencies=( "awesome" "rofi" "fzf" "python-pywal" "wget" )
for d in "${dependencies[@]}"
do
    [[ $(command -v "$d" 2>/dev/null) ]] || { echo -en "\n$d needs to be installed.";deps=1; }
done
[[ $deps -ne 1 ]] && echo "OK" || { echo -en "\nInstall dependencies for 100x better luck.\n";exit 1; }

cd $HOME

echo -e "\033[1mRicing UP!!! \033[0m"
[[ ! -d AwesomeDots/ ]] && git clone https://github.com/HrideshG88/AwesomeDots.git ;
rsync -avxP AwesomeDots/config/ .config/ 

sudo cp -f AwesomeDots/config.ini /etc/ly/ #login manager

git clone https://github.com/streetturtle/awesome-wm-widgets.git .config/awesome/awesome-wm-widgets #window_manager widgets

cp -f AwesomeDots/xinitrc $HOME/.xinitrc #startup 

mv AwesomeDots/scripts $HOME/
chmod +x scripts/*
cp AwesomeDots/alacrittypywal.sh $HOME/ #color alacritty with pywal
ln -s scripts/dexplore /usr/bin/ #search web indexes
ln -s scripts/newq /usr/bin/ #pywal wrapper/wallpaper selector
ln -s scripts/ocean /usr/bin/ #newsboat open links
ln -s scripts/shredder /usr/bin/ #fzf shred script
#ln -s $HOME/scripts/fixmon /usr/bin/ #multimonitor setup

read -p "Get wallpapers? (y/n): " walp
if [[ $walp = [y,Y] ]] ; then
	if [[ $(curl -s "https://sudormrf.tech/wallpapers/") = "error code: 1033" ]] ; then  
		echo "Not Found!" 1>&2; 
		exit 1 
	fi
	wget -q --show-progress -r -nH --cut-dirs=2 --no-parent --reject='index.html*' "https://sudormrf.tech/wallpapers/"
	echo "Wallpapers Acquired!"
fi

echo -e "COMPLETE!!"
