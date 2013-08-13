# DR-Vimfiles Plug-In Management

## Plug-Ins

Plug-ins are managed using [pathogen][pathogen]. All submodule plug-ins are
stored in the `bundle_storage` directory and are not available to Vim until
they are symlinked to the `bundle` directory. The `bundle` directory is ignored
by the repository allowing custom configurations on a per install basis. To
activate a plug-in run:

    ln -s ~/path/to/vimfiles/bundle_storage/bundle-name ~/path/to/vimfiles/bundle/bundle-name

You'll need to restart Vim for the changes to take effect.


### Adding New Plug-Ins As Submodules

New plug-ins need to be added to the `bundle_storage` directory and should be
treated as submodules. To add a new one run:

    git submodule add <remote_repository> <home/.vim/bundle_storage/bundle-name>
    git submodule init
    git submodule update
    ln -s ~/path/to/vimfiles/bundle_storage/bundle-name ~/path/to/vimfiles/bundle/bundle-name

Test it out and if it's a keeper, add it to the repository, add it to the list
below with a quick description and tell the world about it's greatness.

[Vim Scripts][vim-scripts] has an enormous amount of repositories for all sorts
of plug-ins. However, if the original author has their own github repository,
try to clone from there instead.


### Removing Submodules

   1. Delete the relevant line from the `.gitmodules` file
   - Delete the relevant section from `.git/config`
   - Run `git rm --cached path_to_submodule` (**no trailing slash!!**)
   - Remove the directory from `bundle_storage`
   - Remove the symbolic link from `bundle`
   - Remove any descriptions from the `README.md` file


### Default Plug-Ins

The [install script][install.sh] created initial symbolic links for the
plug-ins listed below. These are primarily file type oriented plus a few must
haves. You can disable any of these by removing the symbolic link, but it would
be a lot cooler if you didn't.

- [ack.vim](https://github.com/mileszs/ack.vim/blob/master/doc/ack.txt)
- [actionscript.vim](https://github.com/vim-scripts/actionscript.vim--Leider)
- [applescript.vim](https://github.com/vim-scripts/applescript.vim)
- [browser-refresh.vim](https://github.com/mkitt/browser-refresh.vim/blob/master/doc/browser-refresh.txt)
- [cocoa.vim](https://github.com/msanders/cocoa.vim/blob/master/doc/cocoa.txt)
- [gist-vim](https://github.com/mattn/gist-vim)
- [jade.vim](https://github.com/vim-scripts/jade.vim)
- [vim-json](https://github.com/elzr/vim-json) - A better JSON for Vim:
  distinct highlighting of keywords vs values, JSON-specific (non-JS) warnings,
  quote concealing. Pathogen-friendly.
- [markdown-preview.vim](https://github.com/mkitt/markdown-preview.vim/blob/master/doc/markdown-preview.txt)
- [nerdcommenter](https://github.com/scrooloose/nerdcommenter/blob/master/doc/NERD_commenter.txt)
- [nerdtree](https://github.com/scrooloose/nerdtree/blob/master/doc/NERD_tree.txt)
- [processing.vim](https://github.com/vim-scripts/Processing)
- [rvm.vim](https://github.com/csexton/rvm.vim)
- [SirVer/ultisnips][https://nipsithub.com/SirVer/ultisnips] - This is an
  implementation of TextMates Snippets for the Vim Text Editor. It has all
  features of TextMates Snippets and then some.
- [statusline](https://github.com/factorylabs/vimfiles/blob/master/home/.vim/bundle_storage/statusline/doc/statusline.txt)
- [supertab](https://github.com/ervandew/supertab/blob/master/doc/supertab.txt)
- [syntastic](https://github.com/scrooloose/syntastic/blob/master/doc/syntastic.txt)
- [taglist.vim](https://github.com/vim-scripts/taglist.vim/blob/master/doc/taglist.txt)
- [vim-coffee-script](https://github.com/kchmck/vim-coffee-script)
- [vim-cucumber](https://github.com/tpope/vim-cucumber)
- [vim-fugitive](https://github.com/tpope/vim-fugitive/blob/master/doc/fugitive.txt)
- [vim-haml](https://github.com/tpope/vim-haml)
- [vim-javascript](https://github.com/pangloss/vim-javascript)
- [vim-markdown](https://github.com/tpope/vim-markdown)
- [vim-rails](https://github.com/tpope/vim-rails/blob/master/doc/rails.txt)
- [vim-ruby](https://github.com/vim-ruby/vim-ruby/tree/master/doc)
- [vim-stylus](https://github.com/wavded/vim-stylus)
- [vim-unimpaired](https://github.com/tpope/vim-unimpaired/blob/master/doc/unimpaired.txt)
- [yankring](https://github.com/chrismetcalf/vim-yankring/blob/master/doc/yankring.txt)


### Additional Plug-Ins

These are the additional plug-ins included, but are not required. They are not
linked to the `bundle` directory out of the box. If adding any of these, make
sure to read the docs on their usage and what variables/settings may be
required in `.vimrc.local`

- [argtextobj.vim](https://github.com/vim-scripts/argtextobj.vim) - Motion commands for manipulating function arguments \*\*
- [autocomplpop.vim](https://github.com/vim-scripts/AutoComplPop/blob/master/doc/acp.txt) - Live completion as you type, this can slow Vim down, but is useful in certain situations
- [autocorrect.vim](https://github.com/vim-scripts/autocorrect.vim) - Corrects misspellings as you type i.e. teh -> the \*\*
- [bufkill.vim](https://github.com/vim-scripts/bufkill.vim) - Unload, delete or wipe a buffer
- [camelcasemotion](https://github.com/vim-scripts/camelcasemotion/blob/master/doc/camelcasemotion.txt) - Motion commands for moving between camelCase or words\_with\_underscores \*\*
- [clang-complete](https://github.com/Rip-Rip/clang_complet://github.com/Rip-Rip/clang_complete) - Use clang for completing C/C++ code.
- [colorsel.vim](https://github.com/vim-scripts/colorsel.vim/blob/master/doc/colorsel.txt) - Interactive RGB/HSV color selector
- [Command-T](http://www.url.com/) - Just like TextMate
- [delimitMate](https://github.com/Raimondi/delimitMate) - Automatic closing of quotes, parenthesis, brackets, etc. \*\*
- [gundo](https://github.com/vim-scripts/Gundo/blob/master/doc/gundo.txt) - Graph Vim's undo tree so it is actually usable
- [html-autoclose.vim](https://github.com/vim-scripts/HTML-AutoCloseTag) - Automatically closes HTML tags, doesn't play well with the delimitMate plugin
- [indexed-search.vim](https://github.com/vim-scripts/IndexedSearch) - Adds visual cues when performing searches within a file \*\*
- [lustyjuggler](https://github.com/vim-scripts/LustyJuggler) - Enables a window for navigating through open buffers
- [specky](https://github.com/vim-scripts/Specky/blob/master/doc/specky.txt) - Plug-in for testing Ruby code with RSpec
- [tabular](https://github.com/godlygeek/tabular/blob/master/doc/Tabular.txt) - Configurable, flexible, intuitive text aligning \*\*
- [tailminusf](https://github.com/vim-scripts/TailMinusF/blob/master/doc/tailminusf.txt) - Watch the contents of a file in real time
- [vim-ragtag](https://github.com/tpope/vim-ragtag/blob/master/doc/ragtag.txt) - Ghetto XML/HTML mappings
- [vim-repeat](https://github.com/tpope/vim-repeat) - Enable repeating commands mapped to "." \*\*
- [vim-speeddating](https://github.com/tpope/vim-speeddating/blob/master/doc/speeddating.txt) - Use CTRL-A/CTRL-X to increment dates, times, and more
- [vim-surround](https://github.com/tpope/vim-surround/blob/master/doc/surround.txt) - Delete, change, and add "surroundings" i.e. parentheses, quotes, and HTML tags \*\*


## License and Contributions

All licensing for the Bundles/Plug-ins should be found in their respective
repositories. Anything written by F/ is of course open source through MIT.
While contributions are welcome, you're probably better off forking and tuning
it to your own machine.

Copyright (c) 2013 by DigitalRonin.me

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


<!-- link ids -->
[flvimfiles]: https://github.com/factorylabs/vimfiles
[vim]: http://www.vim.org/
[redcarpet]: https://github.com/vmg/redcarpet
[ruby]: http://www.ruby-lang.org/
[python]: http://www.python.org/
[macports]: http://www.macports.org/
[macports_install]: http://www.macports.org/install.php

[nodejs]: http://nodejs.org/
[npm]: http://npmjs.org/
[nodejslint]: https://github.com/reid/node-jslint
[nodejshint]: https://github.com/jshint/node-jshint

[jshint]: http://jshint.com/ 
[jslint]: http://www.jslint.com/lint.html

[macvim]: http://code.google.com/p/macvim/
[homebrew]: http://github.com/mxcl/homebrew
[homesick]: http://github.com/technicalpickles/homesick
[ctags]: http://ctags.sourceforge.net/
[discount]: http://www.pell.portland.or.us/~orc/Code/discount/
[vim-scripts]: https://github.com/vim-scripts
[install.sh]: https://github.com/factorylabs/vimfiles/blob/master/install.sh
[update.sh]: https://github.com/factorylabs/vimfiles/blob/master/update.sh
[clean.sh]: https://github.com/factorylabs/vimfiles/blob/master/clean.sh
[closure]: http://code.google.com/p/closure-linter/
[syntastic]: https://github.com/scrooloose/syntastic
[pathogen]: https://github.com/tpope/vim-pathogen
[fmd-themes]: https://github.com/factorylabs/fmd-themes
[MesloGM]: https://github.com/andreberg/Meslo-Font
[defunkt]: http://github.com/defunkt
[defunkt-subs]: http://github.com/guides/developing-with-submodules
[jshint-config]: https://github.com/factorylabs/jshint-config 

