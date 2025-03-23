echo "Cloning Jenna Repository"
git clone https://github.com/super7usr/Digital-Rename-Bot /rename
cd /rename
pip3 install -U -r requirements.txt
echo "Starting Bot...."
pip install ffmpeg
heroku buildpacks:add https://github.com/jonathanong/heroku-buildpack-ffmpeg-latest.git
python3 bot.py
echo "jenna ortega"
echo "started"
