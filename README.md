# dotfiles

## setup

1. Os x related settings

* Enable tap to click
* Swap caps lock and control
* Enable dark menu/dock
* Set background

2. Install Homebrew:

```
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

3. Install dotfiles (requires git, which requires xcode):

```
$ git clone git@github.com:michaelavila/dotfiles.git $HOME/.dotfiles
```

4. Install apps from brew

```
$ cd $HOME/.dotfiles
$ brew bundle
```

* iTerm: Update font size to 16
* iTerm: Enable "Applications in terminal may access clipboard"

5. Install rc files

```
$ ln -s $HOME/.dotfiles/rcrc $HOME/.rcrc
$ rcup
```

6. Change shell

```
$ sudo su
$ echo "/usr/local/bin/zsh" >> /etc/shells
$ exit
$ chsh -s /usr/local/bin/zsh
```

7. Install Vundle + vim packages

```
$ mkdir -p $HOME/.vim/bundle
$ git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/
$ vim +PluginInstall +qall
```

8. Copy ssh and gpg keys

9. Install logbook

```
$ git clone git@github.com:michaelavila/logbook.git $HOME/vimwiki
```
