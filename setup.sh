# Install XCode
echo 'visit https://developer.apple.com/downloads/index.action' && read

# Install homebrew
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)" 

# Install package via homebrew
brew install ${PACKAGE} 

# Check status of homebrew
brew doctor

# Update homebrew itself
brew update

# Show version of homebrew
brew -v

# Install wget
brew install wget

# Install xz
brew install xz

# Install binutils
brew install binutils

# Install coreutils
brew install coreutils

# Install lv
brew install lv

# Install findutils
brew install findutils

# Install gnu-sed
brew install gnu-sed

# Make directory for private bin
mkdir ${HOME}/bin

# Make alias to gnu commands as symbolic link
for CMD in sed xargs find ; do ln -s $(which g${CMD}) ${HOME}/bin/${CMD}; done

# Set path
path=($HOME/bin $(/usr/local/bin/brew –prefix coreutils)/libexec/gnubin $path)



