#!/usr/local/bin/bash
# NOTE: this only works with Bash 4.0+

# This will take care of two very common errors:
# Referencing undefined variables (that default to "")
# Ignoring failing commands
set -o nounset
set -o errexit

echo -e '\n--- SSH ---'
if [ ! -f ~/.ssh/id_rsa ]; then
  echo 'setting up SSH key';
  ssh-keygen -t rsa -b 4096 -C "$(scutil --get ComputerName)"
  ssh-add -K ~/.ssh/id_rsa
else
  echo 'SSH key already exists';
fi

echo -e '\n--- Homebrew ---'
if ! command -v brew; then
  echo 'installing Homebrew';
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)";
else
  echo 'Homebrew already installed';
fi

echo -e '\n--- Oh My Zsh ---'
if [ -d ~/.oh-my-zsh ]; then
	echo "oh-my-zsh is installed"
 else
 	echo "oh-my-zsh is not installed - installing oh-my-zsh";
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

echo -e '\n--- BOOTSTRAPPING FINISHED ---'
