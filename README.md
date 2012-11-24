Wake Up Call (wuc)
========================================
A bash script that randomize your songs chooses one to wake you up!
Put this script to run in your cron and it should wake you up with a different 
song everytime, without the fear of starting to hate the song you liked before you put it in your phone to wake you up (we all have that song).

Made and tested only in Ubuntu. Other distributions at your own risk, but should work fine if it's Debian-based.**

## Install

Really simple, actually.

```bash
git clone git@github.com:pedrochaves/wake-up-call.git
cd wake-up-call
chmod +x install.sh

# sudo or run as root, whichever you prefer
sudo ./install.sh 
```

## Usage

### Play a random song

```bash
wuc path/to/folder
```

### Stop the song currently playing

```bash
wuc -s
```

(this actually is a shortcut to `mocp -s`)

## The wake up call

Add a line to your `/etc/crontab` file to the our you want to wake, and tadah!
For some weird reason that I haven't found out yet, if you tell cron to run
`wuc` as root, you can't stop the song unless you kill the `mocp` process, so I
suggest you use a different user, so you can use `mocp -s` to stop it

Example:

```
# Waking up at 6AM
0 6   * * *   pedro    wuc /home/pedro/Music
```

## TODO

- Add support for logging
