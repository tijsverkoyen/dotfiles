# Howto install the ultimate system

1. Install some applications
2. Install needed stuff for the script (Homebrew has some dependencies)
3. Clone the dotfiles
4. Run the script

## 1. Install some applications

Some applications are available from the App-store:

* [OCRkKit](http://itunes.apple.com/be/app/ocrkit/id410309628?mt=12)
* [Skitch](http://itunes.apple.com/be/app/skitch/id425955336?mt=12)
* [The Unarchiver](http://itunes.apple.com/be/app/the-unarchiver/id425424353?mt=12)
* [Xcode](http://itunes.apple.com/be/app/xcode/id497799835?mt=12)

These applications aren't (currently) available from the App-store, you can use the links below:

* [Dropbox](https://www.dropbox.com)
* [Spotify](http://www.spotify.com)
* [TextMate](http://macromates.com)
* [Transmit](https://www.panic.com/transmit)
* [PHPStorm](http://www.jetbrains.com/phpstorm/)

## 2. Install some dependencies

### XCode Command Line Tools

1. Open Xcode
2. Open the Preferences
3. Click Downloads
4. Install "Command Line Tools"

### XQuartz

1. http://xquartz.macosforge.org

## 3. Clone the dotfiles

    cd ~/ && git clone https://tijsverkoyen@github.com/tijsverkoyen/dotfiles.git

## 4. Run the script

    cd ~/dotfiles/ && ./install
    cd ~/dotfiles/clean_install && ./install
