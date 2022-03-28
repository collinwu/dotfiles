# Step by Step

**NOTE:** Assuming a fresh MacOS installed system

1. When you boot up, the welcome prompt asks you to sign in to an Apple account, sign in.
2. Once initial MacOS setup is configured, open Safari to your public `dotfiles`
3. Clone your `dotfiles` repo in a terminal and it should prompt you for git utils where developer tools installation prompt will appear - Install them
   - `$ git clone [dotfiles repo] .dotfiles` (in your `$HOME` directory)
4. Navigate to your dotfiles directory and run `bootstrap` or `sh bootstrap.sh`
5. Then symlink the rest of your dotfiles to your home directory with [stow](https://www.gnu.org/software/stow/)
   - Stow creates a symlink one directory above where the `stow` command was run. [Reference](https://alexpearce.me/2016/02/managing-dotfiles-with-stow/)
6. Leverage any [QOL](/docs/qol.md) applications as well including Alfred, iStat, 1Password Browser Extension, etc.
7. Configure anything newly added that could include Alfred workflows and language runtimes for `asdf`, etc.

If any <ins>issues</ins> encountered, open an issue here: [https://github.com/collinwu/dotfiles/issues](https://github.com/collinwu/dotfiles/issues)
