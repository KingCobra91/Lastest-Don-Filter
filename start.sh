if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/KingCobra91/Lastest-Don-Filter.git /Lastest-Don-Filter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Lastest-Don-Filter 
fi
cd /Lastest-Don-Filter 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
