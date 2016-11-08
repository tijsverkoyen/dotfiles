# My Dotfiles

## Clean install

* Update macOS to the latest version with the App Store
* Install Xcode from the App Store, open it and accept the license agreement
* Install macOS Command Line Tools by running `xcode-select --install`

### ssh-stuff

* Copy public and private SSH keys to `~/.ssh`
* Append `/usr/local/bin/zsh` to the end of your `/etc/shells` file

### Clone the repo

    cd ~/ 
    git clone https://tijsverkoyen@github.com/tijsverkoyen/dotfiles.git
    cd ~/dotfiles

### computer name

* Set the computer name

### Terminal.app

* Import the terminal theme

### Install all

* Run `install.sh` to start the installation
* Make sure Dropbox is set up and synced
* Restore preferences by running `mackup restore`

### Reboot

* Restart your computer to finalize the process



# Extra's for my Mac mini

    brew cask install couchpotato
    brew cask install logitech-myharmony
    brew cask install plex-media-server
    brew cask install plex-home-theater
    brew cask install sonarr
    brew cask install utorrent


## Manual installs

* [Promise Utility](http://www.promise.com/us/Support)


# @todo

brew mysql-client only
