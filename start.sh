if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  gh repo clone OMlinks/Filter-Link-Version
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Filter-Link-Version
fi
cd /Filter-Link-Version
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
