echo "Cloning Repository"
git clone https://github.com/super7usr/Digital-Rename-Bot ~/rename
cd ~/rename

# Check and install Homebrew
which brew || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew tap heroku/brew && brew install heroku

# Check and install sudo
which sudo || apt-get install sudo -y

# Check and install Heroku CLI
which heroku || curl https://cli-assets.heroku.com/install.sh | sh

pip3 install -U -r requirements.txt
echo "Starting Bot...."
pip install ffmpeg
heroku buildpacks:add https://github.com/jonathanong/heroku-buildpack-ffmpeg-latest.git
python3 bot.py
echo "jenna ortega"
echo "started"
