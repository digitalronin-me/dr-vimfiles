#!/bin/sh
default_bundle_submods=(
  ack.vim
  actionscript.vim
  applescript.vim
  browser-refresh.vim
  cocoa.vim
  gist-vim
  jade.vim
  vim-json
  markdown-preview.vim
  nerdcommenter
  nerdtree
  processing.vim
  rvm.vim
  ultisnips
  supertab
  syntastic
  vim-coffee-script
  vim-cucumber
  vim-fugitive
  vim-haml
  vim-javascript
  vim-markdown
  vim-rails
  vim-ruby
  vim-stylus
  vim-unimpaired
  vim-surround
  yankring
)

default_bundle_snapshots=(
  taglist
  statusline
)

full_path=`pwd`

echo "Creating directories..."
mkdir -p $full_path/home/.vim/tmp/yankring
mkdir -p $full_path/home/.vim/spell

echo "Setting up default vimrc.local..."
cp $full_path/templates/.vimrc.local.example $full_path/home/.vimrc.local

echo "Initializing submodules..."
git submodule init
git submodule update
git submodule foreach git checkout master
git submodule foreach git clean -f

echo "Symlinking default bundle submods..."
for i in "${default_bundle_submods[@]}"; do
  ln -sv "$full_path/home/.vim/core-upstream/bundle/$i" "$full_path/home/.vim/bundle/"
done

echo "Symlinking default bundle submods..."
for i in "${default_bundle_snapshots[@]}"; do
  ln -sv "$full_path/home/.vim/core-upstream/bundle-snapshot/$i" "$full_path/home/.vim/bundle/"
done

echo "--------------------------------------------------"
echo "*** Install Complete ***"
echo "--------------------------------------------------"
echo "Run the following command to symlink your castle:"
echo "homesick symlink ${PWD##*/}"
echo "--------------------------------------------------"

