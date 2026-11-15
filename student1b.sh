#!/bin/bash

echo "===OH, HEY. THERE'S ACTUALLY PEOPLE HERE.==="

echo "                                                 @@@                                                 
                                               @@-:+@                                                
                                              @+-:-==#@                                              
                                            @*:::-==---#@                                            
                                          @#-=--=--:---+%@@                                          
                                        @@=---=-#=---*@*---@@                                        
                                      @@=====---+%===%==*@@@@@@                                      
                                    @@=:::----===+#==+#@@@@@@@@@@                                    
                                  @@+-::-*@@@@@@@#*=-=%@@@@@@@@@@@                                   
                                 @#===-@@@@@@@@@@@@@%@%@@@###%@@@@@@                                 
                               @#=*#%%@@@@@@@@@@@@%@@@@%#%@@@@@@@@##@@                               
                             @%*@%@@@@@@@@@@@@@@@@@@@@@@%*##@@@@@@@@@@@@                             
                           @@--@@@@@@@@@@@@@@@@@@@@@@@%@@**##%@@@@@@@@@@@@                           
                         @@+--*@@@@@@@%@@@@@@@@@@@@@@@@@%#+####@@@@@@@@@@%@                          
                       @@+---:@@@@@@@@%@@@@@@@@@@@@@@@@@*#+#*###@@@@@@*@@@#*@                        
                      @*==---=%@@@@@@@@%@@@@@@@@@@@@@@@###+###*%%@@@@@*=*%@@+#@                      
                    @%-===--==%@@@%@@@@@%%@@%+=%@@@@@@#*#**####*%%@@@@#===*%%%+@@                    
                  @%+=-=+===+=*@@#####@@@*+@%#**#*#%%@@@@@#*#####%@@@@#=++=======@@                  
                @@=----=--===++@@+*#%%*@@@@%#*==*+%@@@%@#=-#####*#%@@@#===-=======+@@                
              @@+---=-------=+=#@*#@*++@%%@@@@@@@@%@@#%%=---*###*##@@@#====+=--=+===+@@              
             @+-------==-----+==%+*@@@@@@@@##@@@@@%@%%@=::--=*###+#@@@#----===+=-=====*@             
           @#=-=---=-=--==---=+=+*=%@@@@@@@@@@%@@@%@%*=------=######@@@------=+=-=++===+%@           
         @%+=+===-------===--=+=====@@@@@@@@@@@@@@#%%=--------+##*###@@-------=+++++====-=%@         
       @@++++++=-+=------=+++==+===--#@@@@@@@@@@%##%%=--==-----##*++##@%------==+++++=======@@       
     @@=-==+++=---==------==+=--=+=====%@@@@@@@#%%#@@@@@@@@@@@-##**#=+#%#-------++++++=====--+@@     
   @@+------==+++=+++=----===---=+==-----%@@%##%%##@-::::::::.:##**==+==*#=-----=+=--+++=-=---=*@@   
  @*++=--------===-=-===--+#*+--:........###%#%####@-:::::::..+%#*=-----=+++=---=++++++=====-----*@  
 @@:==------------==+=---@@-::::.........*%%%%##%@%@::::::::.:+*+-:-=--=+++=-----==+==++++======-:@@ 
 @@-::-------+++++++=--===+@#:::.......-##%%%%%@@@@%:::::::=**+=+*#@@@@@+==-------==-====+++++=::=@  
   @@-:-=-----=++++=+====++-*@+::...:+#%@%@@@@@@@@%#::.:=+*****+*******+*+---------==++==+++=-:-@@   
     @%:::-----=+++++=-==-+++=##:..=%%@@@@@@@@@@@@@*:=+********++**********----=+=----=====::-@@     
       @@::-+=++++++++=-----=+=*+:#@@@@@@@@@@@@@@@#+***********=***+********----++++=-----::@@       
         @+::=++++==---=********%+@@@@@@@@@@@%@@@%#***********++************=---=+++++--::*@         
           @+::=+=----=***%@%#***@@@@@@@@@@@@@@@@***%@%*******=************+==++++==+=::*@           
             @-::-----=**%@*****%@@@@@@@@@%@@@@@@*******%@****+************+==++++==::=@             
              @@:::---=**@#*****@@@@@@@@@%@@@@@@%*******@#**************#%@@@@===-::-@@              
                @%:::-+*+@+#***%@@@@@@@@%%@@@@@@%******#@******+******@@##++#@*=::-@@                
                  @*::=**@*****@@@@@@@@@@@@@@@@@#******@#****++*******#@@#*=*%=::#@                  
                    @#::+@****#@@@@@@%@@@%@@@@@@#******@*****+=*+=+****#@@**=::@@                    
                      @=::+***@@@@@@@@@@%%@@@@@@#*****%%******==+****+=+#@*::+@                      
                       @@-:-*+%@@@@@@@@@@%#%@@@@%*****@#******=-===++***+::=@@                       
                         @@-:-####%@@@@@@@@%###%#*****@*******+==+*+===::-@@                         
                           @@::+@@@@@@@@@@@@@@@%#*****@+*******====**-::@@                           
                             @#::#@@@@@@@@@@@@@@@#****@+*******==-=-::%@                             
                               @+::#@@@@@@@@@@@@@@****@+*******==-::#@                               
                                 @+::@%@@@@@@@@@@@@***@+=+*****=::*@                                 
                                  @@-::#@@@@%%%@@@@@++@#====*+::=@                                   
                                    @@-:=%@@@@@@@@@@@**@=*+-::-@@                                    
                                      @%::+@@@@@@@@@@@+@#=-:-@@                                      
                                        @@::#@%@@@@@@%%#=::@@                                        
                                          @*::#@@@@@%@*::#@                                          
                                            @+:-@@@@#::*@                                            
                                              @=:-#::+@                                              
                                               @@-:-@                                                
                                                 @@@  "

echo "Auto-running speicif commands (character text)"

check_sources_debian() {
  cat -n /etc/apt/sources.list
}

check_sources_mint() {
  cat -n /etc/apt/sources.list.d/official-packages-repositories.listS
}

# NOTE: RUN THIS COMMAND IF SOURCES THAT PULL FROM INTERNET ARE NOT WORKING
# (ONLY WORKS ON DEBIAN IF UR NOT ON DEBIAN DONT USE THIS I BEG OF YOU PLEASE DONTTTTT)

update_sources_debian12() {

  local file="/etc/apt/sources.list"

  local LINE1="deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware
  deb-src http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware"
  
  local LINE2="deb http://security.debian.org/debian-security bookworm-security main contrib non-free non-free-firmware
  deb-src http://security.debian.org/debian-security bookworm-security main contrib non-free non-free-firmware"

  local LINE3="deb http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware
  deb-src http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware"

  printf "%s\n%s\n%s\n" "$LINE1" "$LINE2" "$LINE3" | sudo tee "$file" > /dev/null

}

#note to self: work on the mint 21 script
#the thing is that mint 21 has both diff sources and diff versions (21.0, 21.1, 21.2, etc) so i need to make a script that both
#checks version of mint using grep and updates the source file with the CORRECT repository for that version

run_updates() {
    sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade
}

enable_firewall() {
    echo "character specific text"
    sudo apt-get install ufw
    sudo ufw enable
    sudo ufw status
}

# NOTE: CHECK PORTS REQUIRED IN README AND MAKE SURE THAT 
disabling_ports() {
  echo "character specific text"
  echo "disabling ports i hope you checked before running the script LOL"
  for port in $20 $21 $23 $135 $411 $412; do
    sudo kill -9 $(sudo lsof -t -i"$port")
  done
}

run_updates
enable_firewall