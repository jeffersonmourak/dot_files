echo "Installing Brew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing GIT"
brew install git

echo "Adding Ignore alias"
git config --global alias.ignore 'update-index --skip-worktree'
git config --global alias.unignore 'update-index --no-skip-worktree'
git config --global alias.ignored '!git ls-files -v | grep "^S"'

echo "Installing Iterm"
curl -o iterm.zip https://iterm2.com/downloads/stable/iTerm2-3_0_15.zip
unzip iterm.zip
mv iTerm.app /Applications
rm iterm.zip

echo "Installing Node"
curl -o node.pkg https://nodejs.org/dist/v6.11.0/node-v6.11.0.pkg
open node.pkg

echo "Installing N package"
sudo npm install -g n

echo "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Done!"
exit 0
