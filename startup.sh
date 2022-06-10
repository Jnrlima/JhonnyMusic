echo ">> FETCHING UPSTREAM..."
git clone https://github.com/Jnrlima/JhonnyMusic
pprint "Installing Nodejs and Npm..  "
curl -fssL https://deb.nodesource.com/setup_17.x | sudo -E bash - &>nodelog.txt &&
sudo apt install nodejs -y &>>nodelog.txt &&
sudo npm i -g npm &>>nodelog.txt &&
pprint "SUCCESS!\n" "cgreen" || (pprint "FAIL.\n" "cred"; exit 1)
echo ">> INSTALLING REQUIREMENTS..."
cd /JhonnyMusic
pip3 install -U -r requirements.txt
echo ">> STARTING MUSIC PLAYER USERBOT..."
clear
echo "
#     #                        
##   ## #    #  ####  #  ####  
# # # # #    # #      # #    # 
#  #  # #    #  ####  # #      
#     # #    #      # # #      
#     # #    # #    # # #    # 
#     #  ####   ####  #  ####  
                               
######                                    
#     # #        ##   #   # ###### #####  
#     # #       #  #   # #  #      #    # 
######  #      #    #   #   #####  #    # 
#       #      ######   #   #      #####  
#       #      #    #   #   #      #   #  
#       ###### #    #   #   ###### #    # 
                                          
MUSIC PLAYER USERBOT IS SUCCESSFULLY DEPLOYED!
"
python3 main.py
