echo ">> FETCHING UPSTREAM..."
git clone https://github.com/Jnrlima/JhonnyMusic
pip3 install -r requirements.txt
echo ">> INSTALLING REQUIREMENTS..."
cd /JhonnyMusic
pip3 install -U -r requirements.txt
pip3 install wget
pip3 install nodejs
apt install git curl python3-pip ffmpeg -y
apt install -U pip
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
apt install -y nodejs
apt install build-essential
npm install pm2@latest -g
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
