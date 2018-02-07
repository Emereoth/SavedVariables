##############################################################################
#                              USUAL ALIASES                                 #	
##############################################################################
alias b="cd .."
alias l="ls -lGFhS"
alias la="ls -laGFhS"
alias c="clear"
alias cl="clear && ls -lGFhS"
alias x="exit"
alias covgcc="gcc -fprofile-arcs -ftest-coverage"
alias covclean="rm a.out *.gcda *.gcno"
alias covfclean="rm *.gcov"
alias vgcc="gcc -g -Wall -Wextra -Werror"
alias gcc="gcc -Wall -Wextra -Werror"
alias tehpendrive="cd /Volumes/TEHPENDRIVE/ && open ."
alias valgrind="~/.brew/bin/valgrind"
alias valtest="valgrind --tool=memcheck --leak-check=full --track-origins=yes --show-reachable=yes"
alias untruc="vim ~/.bashrc"
alias interface="~/bin/scripts/INTERFACE/main.sh"

##############################################################################
#                           CORRECTIONS & TESTS                              #	
##############################################################################

alias norm="norminette"
alias normall="norminette *[.ch]"
alias fch="sh ~/bin/scripts/filechecker.sh"
alias unit="rm -rf ~/Taf/libft-unit-test/ && cd ~/Taf/ && git clone https://github.com/alelievr/libft-unit-test.git && cd ~/Taf/Libft && make fclean && cd ../libft-unit-test/ && make re && make f && cd ~/Taf/Libft && make fclean && cd ~/Taf/libft-unit-test/"      #LIBFT UNIT-TEST

##############################################################################
#                           SAVES & BACKUPS                                  #	
##############################################################################

alias save="sh ~/bin/scripts/instant_saving_script.sh"                          #SAVE CURRENT FOLDER TO TEHPENDRIVE
alias sync="sh ~/bin/scripts/sync.sh"                                           #SAVE .BASHRC, .VIMRC, .WELCOME, COLORSCHEME AND SCRIPTS TO TEHPENDRIVE
alias init="sh ~/bin/scripts/init.sh"                                           #SYNCHRONIZE .BASHRC, .VIMRC, .WELCOME, COLORSCHEME AND SCRIPTS FROM TEHPENDRIVE

alias chars="cp /dev/random /dev/stdout"                                        #DISPLAY RANDOM SHIT ON TERMINAL

##############################################################################
#                           GIT REPOSITORIES                                #	
##############################################################################

alias refresh="bordel && oriana && gresource"                                   #GLOBAL REFRESH OF ALL REPOSITORIES AND CONTENTS
alias setupdir="cbordel && coriana && cgresource"                               #SETUP OF ALL ---EMPTY--- REPOSITORIES

#CTHINGY : SETUP OF EMPTY THINGY REPOSITORY

alias cbordel="mkdir -p ~/Bordel && mkdir -p ~/Bordel_OLD && rm -rf Bord* && mkdir ~/Bordel && mkdir ~/Bordel_OLD"
alias coriana="mkdir -p ~/Project_Oriana && mkdir -p ~/Project_Oriana_OLD && rm -rf Project* && mkdir ~/Project_Oriana && mkdir ~/Project_Oriana_OLD"
alias cgresource="mkdir -p ~/Graph_Resources && mkdir -p ~/Graph_Resources_OLD && rm -rf Gra* && mkdir ~/Graph_Resources && mkdir ~/Graph_Resources_OLD"

#THINGY : REFRESH OF THINGY REPOSITORY

alias bordel="rm -rf ~/Bordel_OLD && mkdir ~/Bordel_OLD && touch ~/Bordel/stahp && mv ~/Bordel/* ~/Bordel_OLD/  && rm ~/Bordel_OLD/stahp && rm -rf ~/Bordel && git clone https://github.com/OrianaProject/Bordel.git" 
alias oriana="rm -rf ~/Project_Oriana && git clone https://github.com/OrianaProject/Project_Oriana.git" 
alias gresource="rm -rf ~/Graph_Resources_OLD && mkdir ~/Graph_Resources_OLD&& touch ~/Graph_Resources/stahp && mv ~/Graph_Resources/* ~/Graph_Resources_OLD/  && rm ~/Graph_Resources_OLD/stahp && rm -rf ~/Graph_Resources && git clone https://github.com/OrianaProject/Graph_Resources.git" 

##############################################################################
#                                LINKS                                       #	
##############################################################################

alias google="sh ~/bin/scripts/links.sh"

alias music_list="cd ~/bin/scripts/music/ && l"

alias caramel="sh ~/bin/scripts/music/caramel.sh"
alias darude="sh ~/bin/scripts/music/darude.sh"
alias diggy="sh ~/bin/scripts/music/diggy.sh"
alias horse="sh ~/bin/scripts/music/horse.sh"
alias jara="sh ~/bin/scripts/music/jara.sh"
alias jinx="sh ~/bin/scripts/music/jinx.sh"
alias jumpstyle="sh ~/bin/scripts/music/jumpstyle.sh"
alias kiwi="sh ~/bin/scripts/music/kiwi.sh"
alias lama="sh ~/bin/scripts/music/lama.sh"
alias leeroy="sh ~/bin/scripts/music/leeroy.sh"
alias meuporg="sh ~/bin/scripts/music/meuporg.sh"
alias mk="sh ~/bin/scripts/music/mk.sh"
alias mlp="sh ~/bin/scripts/music/mlp.sh"
alias moonquest="sh ~/bin/scripts/music/moonquest.sh"
alias pirate="sh ~/bin/scripts/music/pirate.sh"
alias radioactive="sh ~/bin/scripts/music/radioactive.sh"
alias rainbow="sh ~/bin/scripts/music/rainbow.sh"
alias shipwrecked="sh ~/bin/scripts/music/shipwrecked.sh"
alias traitor="sh ~/bin/scripts/music/traitor.sh"
alias verte="sh ~/bin/scripts/music/verte.sh"



##############################################################################
#                          USE WITH CAUTION                                  #	
##############################################################################



#alias forkbomb=":(){ :|:& };:"                                               # FUCK SHIT UP
