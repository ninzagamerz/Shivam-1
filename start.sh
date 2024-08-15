if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/funtoonsmultimediaofficial/Shivam.git /Shivam
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Shivam
fi
cd /Shivam
pip3 install -U -r requirements.txt
echo "Starting Shivam...."
python3 bot.py
