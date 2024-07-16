# +-+-+-+-+-+-+-+-+-+-+
# |P|E|R|S|I|A|N|-|A|I|
# +-+-+-+-+-+-+-+-+-+-+
echo " +-+-+-+-+-+-+-+-+-+-+
 |P|E|R|S|I|A|N|-|A|I|
 +-+-+-+-+-+-+-+-+-+-+
";
read -p "please choose package manger pacman>1 ,apt>2 , dnf>3 , conda>4 ===     " q1
if [ $q1 == 1 ]
then
	sudo pacman -S perl cpan 
elif [ $q1 == 2 ]
then
	sudo apt install perl cpan
elif [ $q1 == 3 ]
then 
	sudo dnf install perl cpan 
elif [ $q1 == 4 ]
then 
	sudo conda install perl cpan
else 
	echo "all done.";
fi

cpan feature;
cpan Gtk3;

cpan Glib ;


pip install --break-system-packages -r requirements.txt
pip install --break-system-packages ultralytics==8.0.104



