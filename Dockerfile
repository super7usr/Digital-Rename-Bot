# Use the official Python image
FROM python:3.11.4-slim-buster

RUN apt-get update -qq && apt-get -y install ffmpeg

# Set the working directory in the container
WORKDIR /app

# Copy the dependencies file to the working directory
COPY requirements.txt .

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

#try for ffmpeg 
RUN heroku buildpacks:add https://github.com/jonathanong/heroku-buildpack-ffmpeg-latest.git
     
# Copy the rest of the application code to the working directory
COPY . .

# Command to run the application
CMD ["python", "bot.py"]
