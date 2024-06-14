# My Dotfiles

## Clean install

* Update macOS to the latest version thru the App Store
* Set the computer name (System Preferences -> Sharing)

### ssh-stuff

* Copy public and private SSH keys to `~/.ssh`

### Clone the repo

    cd ~/ 
    git clone https://tijsverkoyen@github.com/tijsverkoyen/dotfiles.git
    cd ~/dotfiles


### Import the terminal theme

1. Open Terminal.app
2. Open Preferences
3. Import the theme ~/dotfiles/Terminal.app/Tijs.theme
4. Make the theme the default

### Install all

* Run `install.sh` to start the installation
* Make sure Dropbox is set up and synced
* Restore preferences by running `mackup restore`

### Reboot

* Restart your computer to finalize the process
