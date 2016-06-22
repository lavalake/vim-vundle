VIMRC_REPO=https://github.com/lavalake/vim-vundle.git
VIMRC_REPO_NAME=$(echo $VIMRC_REPO | awk -F/ '{print $NF}' | sed -e 's/.git$//')
VIMRC=.vimrc
VIMVUNDLE_REPO=https://github.com/VundleVim/Vundle.vim.git
VIMVUNDLE_DIR=~/.vim/bundle/Vundle.vim
git clone "$VIMRC_REPO"
cp "$VIMRC_REPO_NAME"/"$VIMRC" ~/
git clone "$VIMVUNDLE_REPO" "$VIMVUNDLE_DIR"
