
# Use setx to permanently set environment variables
# https://ss64.com/nt/setx.html


# Create a home directory that is independent of Windows
# Create a bin directory within there that we put executable stuff in

HOME_DIR=/c/home/$USERNAME
HOME_BIN=$HOME_DIR/bin
CODE=$HOME_DIR/code

echo "Creating home directory in ${HOME_DIR}..."
mkdir -p $HOME_BIN
mkdir $CODE

# Set the HOME directory to this new variable
echo "Setting HOME environment variable..."
setx HOME $HOME_DIR

# Add the home/bin dir to the path
setx PATH $PATH:$HOME_BIN


# Other stuff I  had on my PATH
# c:\bat;
# c:\utils;
# C:\tools\jazz\scmtools\eclipse;
# C:\Users\a16106p\AppData\Local\Pandoc\;
# C:\tools\phantomjs-2.1.1-windows\bin;
# C:\tools;
# C:\Users\a16106p\AppData\Roaming\npm;
# c:\tools\selenium

# wget -O emacs.sig http://mirrors.ocf.berkeley.edu/gnu/emacs/windows/emacs-26/emacs-26.1-x86_64.zip.sig
# http://mirrors.ocf.berkeley.edu/gnu/emacs/windows/emacs-26/emacs-26.1-x86_64.zip

echo "Copying dot files to home..."
cp ./dotfiles/bashrc $HOME_DIR/.bashrc
cp ./dotfiles/wgetrc $HOME_DIR/.wgetrc
cp ./dotfiles/gitconfig $HOME_DIR/.gitconfig
cp ./dotfiles/gitignore $HOME_DIR/.gitignore

MYGIT="https://github.com/andrunix"

echo "Cloning emacs config from github..."

# Get the emacs configuration
git clone $MYGIT/emacs.d $HOME_DIR/.emacs.d

# Get the emacs org files
git clone $MYGIT/bcbst $HOME_DIR/code/bcbst
git clone $MYGIT/amp $HOME_DIR/code/amp
git clone $MYGIT/org $HOME_DIR/code/org


echo "DONE!"
echo "You should probably reboot for sanity. It's Windows after all."

