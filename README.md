
colomain's dotfiles
===================

Requirements
------------

Set zsh as your login shell:

    chsh -s $(which zsh)

Install
-------

Clone onto your laptop:

    git clone git://github.com/colomain/dotfiles.git ~/dotfiles


Install [rcm](https://github.com/thoughtbot/rcm):

Mac

    brew tap thoughtbot/formulae
    brew install rcm

Linux

    sudo eopkg it rcm
		
Install the dotfiles:

Mac

    env RCRC=$HOME/dotfiles/rcrc rcup

Linux

    RCRC=~/dotfiles/rcrc rcup

After the initial installation, you can run `rcup` without the one-time variable
`RCRC` being set (`rcup` will symlink the repo's `rcrc` to `~/.rcrc` for future
runs of `rcup`). [See
example](https://github.com/thoughtbot/dotfiles/blob/master/rcrc).
