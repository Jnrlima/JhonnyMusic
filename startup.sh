echo ">> FETCHING UPSTREAM..."
git clone https://github.com/Jnrlima/JhonnyMusic /MusicPlayer
apt install wget -y
apt install git curl python3-pip ffmpeg -y
pip3 install -U pip -y
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
npm install pm2@latest -g -y
apt install build-essential -y
apt install -y nodejs -y
echo ">> INSTALLING REQUIREMENTS..."
cd /MusicPlayer
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
