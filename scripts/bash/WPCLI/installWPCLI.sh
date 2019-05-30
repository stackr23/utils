#!/bin/bash

# COLORS
COLORED_PREFIX='\033[1;36m [StackR23]\033[0;96m'
COLORED_PREFIX_SUCCESS='\033[1;36m [StackR23]\033[1;32m'
COLOR_RESET='\033[1;00m'

# PATHS
SCRIPT_PATH=`pwd`/stack/scripts/WPCLI
FULL_PATH=`pwd`/$0
FULL_PATH=${FULL_PATH/\/.\//'/'}
FULL_PATH=`dirname $FULL_PATH`

echo $FULL_PATH

cd $SCRIPT_PATH
echo ''
echo -e "$COLORED_PREFIX downloading https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar ...$COLOR_RESET"
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
echo ''
echo -e "$COLORED_PREFIX installing 'wp-cli.phar' ..."
chmod +x ./*
sudo mv ./wp-cli.phar /usr/local/bin/wp
echo -e "$COLORED_PREFIX wp --info$COLOR_RESET"
echo ''
wp --info
# WP AUTO COMPLETION
echo ''
echo -e "$COLORED_PREFIX installing auto completion for wp-cli ..."
sudo cp ./wp-completion.bash /usr/local/bin/
source ~/.bash_profile
echo "source /usr/local/bin/wp-completion.bash" >> ~/.bash_profile
echo -e "$COLORED_PREFIX_SUCCESS successfully installed wp-cli in /usr/local/bin/wp"
echo -e "$COLORED_PREFIX run 'wp --help' for further instructions or visit https://make.wordpress.org/cli/"

# TBD: set alias wp='wp --path="./wordpress'
# source ./aliase.sh
