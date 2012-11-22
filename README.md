Wake Up Call (wuc)
========================================
A bash script that randomize your songs chooses one to wake you up!
Put this script to run in your cron and it should wake you up with a different 
song everytime, without the fear of starting to hate the song you liked before you put it in your phone to wake you up (we all have that song).

**For now, works with MP3, WAV and OGG files. Made and tested only in Ubuntu. Other distributions at your own risk.**

## Install

Really simple, actually.

```bash
git clone git@github.com:pedrochaves/wake-up-call.git
cd wake-up-call
chmod +x install.sh

# sudo or run as root, whichever you like
sudo ./install.sh 
```

## Usage

If you use just the `wuc` command, it will look for song in your current 
directory, but `wuc /path/to/folder/` will look for songs where you specify 
(reccomended). 

## TODO

- Other file types (FLAC, AAC)
- Add support for logging
- Improve help
- Multiple paths