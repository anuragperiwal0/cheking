if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/anuragperiwal0/cheking.git /cheking
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /cheking
fi
cd /cheking
pip3 install -U -r requirements.txt
echo "Starting ApnaTube...."
python3 bot.py
