if status is-interactive
    #DECORATIONS
    #neofetch
   
    #RUN
    source ~/.config/fzf/config
    zoxide init fish | source 

    #VARIABLES
    export _JAVA_AWT_WM_NONREPARENTING=1
    export BROWSER=firefox
    
    #ALIASES
    alias pbcopy='xsel --clipboard --input'
    alias pbpaste='xsel --clipboard --output'
    alias l="ls"
    alias sclear="clear"
    alias portal="python3 Portal_StillAlive_Python/still_alive_credit.py"
    alias wgoget="wget -q --show-progress -r -nH --cut-dirs=2 --no-parent --reject='index.html*'"
    alias gpall="ls | xargs -P10 -I{} git -C {} pull"
    alias rm='rm -i'
    alias rmer='rm -rf (ls | fzf -m)'
    alias fuffcred='ffuf -X POST -H "Content-Type: application/x-www-form-urlencoded"'
    #neofetch
    alias neoblyat="neofetch --size 250px --kitty ~/Pictures/arch_logos/aqua.png"
    alias ncaution="neofetch --size 250px --kitty ~/Pictures/arch_logos/caution.png"
    alias nlegacy="neofetch --size 250px --kitty ~/Pictures/arch_logos/oldlogo.png"
    alias nlucy="neofetch --size 250px --kitty ~/Pictures/lucy.png"
    alias nhackerman="neofetch --size 250px --kitty ~/Pictures/hackerman.png"
    alias ndepressed="neofetch --size 250px --kitty ~/Pictures/shinjichair.png "
    alias npunchok='neofetch --size 250px --kitty ~/Pictures/ok.png'
    alias nerv='neofetch --size 250px --kitty ~/Pictures/nerv.png'
    alias neva='neofetch --size 250px --kitty ~/Pictures/eva.png'
    alias nfsmug='neofetch --size 250px --kitty ~/Pictures/frieren_smug.png'
    thefuck --alias | source
#starship init fish | source
	# Created by `pipx` on 2024-03-27 04:17:39
	set PATH $PATH /home/deadeye/.local/bin
	set PATH $PATH /home/deadeye/.cargo/bin
	set PATH $PATH /home/deadeye/.fuelup/bin
end
