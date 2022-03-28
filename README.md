# dotfiles

Your dotfiles are how you personalize your system. These are mine. Largely modified from [@wulymammoth's](https://github.com/wulymammoth/dotfiles)

## Topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there.

I'm using [GNU Stow](https://www.gnu.org/software/stow/) to symlink my dotfiles and each directory that you see here mirrors that of my $HOME directory -- some application and utility configurations typically go under $XDG_CONFIG (~/.config).

Details about leveraging [Stow](https://alexpearce.me/2016/02/managing-dotfiles-with-stow/)

## Install

**IMPORTANT** - before running `boostrap` - check `homebrew/Brewfile` for any Mac App Store applications you would not want. There are at least _**two**_ paid applications included in this `Brewfile`

Run this:

```sh
# clone and bootstrap
$ git clone https://github.com/collinwu/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
$ bootstrap

# if using a mac m1, you may need to add this to your ~/.zshrc config file
`eval $(/opt/homebrew/bin/brew shellenv)`
# or just append it to the end of `.zshrc` file
$ echo `eval $(/opt/homebrew/bin/brew shellenv)` >> ~/.zshrc

# then run `brew bundle` on Brewfile
$ cd homebrew
$ brew bundle

# run stow to symlink to $HOME
$ stow asdf
$ stow zsg
$ stow ...
```

Some additional documentation are in the `/docs` directory. [QOL](/docs/qol.md) has resources on additional configuration and applications that might be useful.

Run through [CHECKLIST](CHECKLIST.md) afterward as well.

## Thanks

Originally inspired by [Zach Holman's dotfile repo](https://github.com/holman/dotfiles) and a desire to be more organized and speed up environment setup. Updated and made more streamlined based on [Wulymammoth's dotfile repo](https://github.com/wulymammoth/dotfiles)
