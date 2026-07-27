# My Dotfiles

## Clean install

* Update macOS to the latest version thru the App Store
* Set the computer name (System Preferences -> Sharing)

### ssh-stuff

* Copy public and private SSH keys to `~/.ssh`

### Chezmoi

* Create a file `~/.config/age/key.txt` with the content below:

```
# created: 2024-11-08T11:05:19+01:00
# public key: XAGEPUBLICKEYX
AGE-SECRET-KEY-YAGESECRETY
```

Replace `XAGEPUBLICKEYX` and `YAGESECRETY` with the correct values, see 1Password.

* Create a file `~/.config/chezmoi/chezmoi.json` with the content below:

```json
{
  "encryption": "age",
  "age": {
    "identity": "/Users/tijs/.config/age/key.txt",
    "recipient": "XAGEPUBLICKEYX"
  },
  "data": {
    "name": {
      "full": "Tijs Verkoyen"
    }
  }
}
```

* `chezmoi init git@github.com:tijsverkoyen/dotfiles.git`
* Create a file `~/.local/share/chezmoi/chezmoiroot` with content: `chezmoi`
* `chezmoi -v update`

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
