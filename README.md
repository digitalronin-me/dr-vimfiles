# DR-Vimfiles

## Overview

DR-Vimfiles is inspired by, and a fork of [factorylabs/vimfiles][flvimfiles].
This version has been seriously dumbed down to git rid of all the
prerequisites, and to simplify installation.

Uses [homeshick][homeshick], but only to seriously simplify installation, and
updates.

Originally Tuned to play nice with [Vim][vim] on OS X but works with most \*nix
environments.

***Please keep in mind that this is a contiuous work in progress, and should
not be considered stable at all.  Use at your own risk.***


## Installation

Now, assuming you have all the prerequisites in place installation this simple:

    $ git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
    $ source "$HOME/.homesick/repos/homeshick/homeshick.sh"
    $ homeshick clone https://github.com/digitalrounin/dr-vimfiles.git

This will install the default configuration files/directories, submodules, and
create symbolic links for bundles and snippets.  And that's it.  You should not
have to do anything else, unless you want to get fancy.  If that's the case,
read the rest of this document.


## Related

  - [dr-vimfiles-nodejs][dr-vimfiles-nodejs] - Vim configurations that require
    Node.JS to be installed.
  - [dr-vimfiles-python][dr-vimfiles-python] - Vim configurations that require
    Python to be installed.

## Default packages

Here are the packages you get out of the box:

  - [Undo](http://sjl.bitbucket.org/gundo.vim/) - Graph Vim's undo tree so it is actually usable
  - [YankRing](https://github.com/vim-scripts/YankRing.vim)
  - [delimitMate](https://github.com/Raimondi/delimitMate) - Automatic closing of quotes, parenthesis, brackets, etc. \*\*
  - [gist-vim](https://github.com/mattn/gist-vim)
  - [html-autoclose.vim](https://github.com/vim-scripts/HTML-AutoCloseTag) - Automatically closes HTML tags, doesn't play well with the delimitMate plugin
  - [nerdcommenter](https://github.com/scrooloose/nerdcommenter/blob/master/doc/NERD_commenter.txt)
  - [nerdtree](https://github.com/scrooloose/nerdtree/blob/master/doc/NERD_tree.txt)
  - [statusline](https://github.com/factorylabs/vimfiles/blob/master/home/.vim/bundle_storage/statusline/doc/statusline.txt)
  - [supertab](https://github.com/ervandew/supertab/blob/master/doc/supertab.txt)
  - [syntastic](https://github.com/scrooloose/syntastic/blob/master/doc/syntastic.txt)
  - [tabular](https://github.com/godlygeek/tabular/blob/master/doc/Tabular.txt) - Configurable, flexible, intuitive text aligning \*\*
  - [vim-colorscheme-switcher][] - Makes it easy to quickly switch between color schemes in Vim.
  - [vim-fugitive](https://github.com/tpope/vim-fugitive/blob/master/doc/fugitive.txt)
  - [vim-haml](https://github.com/tpope/vim-haml)
  - [vim-javascript](https://github.com/pangloss/vim-javascript)
  - [vim-json](https://github.com/elzr/vim-json) - A better JSON for Vim: distinct highlighting of keywords vs values, JSON-specific (non-JS) warnings, quote concealing. Pathogen-friendly.
  - [vim-markdown](https://github.com/tpope/vim-markdown)
  - [vim-repeat](https://github.com/tpope/vim-repeat) - Enable repeating commands mapped to "." \*\*
  - [vim-speeddating](https://github.com/tpope/vim-speeddating/blob/master/doc/speeddating.txt) - Use CTRL-A/CTRL-X to increment dates, times, and more
  - [vim-stylus](https://github.com/wavded/vim-stylus)


Color schemes:

  - [dhruvasagar/vim-railscasts-theme][] - Apprentice is a dark, low-contrast colorscheme for Vim based on the awesome Sorcerer by Jeet Sukumaran.
  - [morhetz/gruvbox][] - heavily inspired by badwolf, jellybeans and solarized.  Designed as a bright theme with pastel 'retro groove' colors and light/dark mode switching in the way of solarized. The main focus when developing gruvbox is to keep colors easily distinguishable, contrast enough and still pleasant for the eyes.
  - [nanotech/jellybeans.vim][] - A colorful, dark color scheme, inspired by ir_black and twilight.  Designed primarily for a graphical Vim, but includes support for 256, 88, 16, and 8 color terminals. On a 16 or 8 color terminal, replace its colors with those in ansi-term-colors.txt for best results.  _**This is a great theme that allows for local overrides, and use of many colors.**_
  - [romainl/Apprentice][] - A color scheme based on the RailsCasts TextMate theme with decent support for both GUI and terminal.
  - [vim-colors-solarized][]

## Removed

These packages have been removed, but might be worth adding back in the future

  - [autocomplpop.vim](https://github.com/vim-scripts/AutoComplPop/blob/master/doc/acp.txt) - Live completion as you type, this can slow Vim down, but is useful in certain situations
  - [markdown-preview.vim](https://github.com/mkitt/markdown-preview.vim/blob/master/doc/markdown-preview.txt)
    Replaced by *markdown-preview.vim*, which lives in
    [dr-vimfiles-nodejs][dr-vimfiles-nodejs].
  - [browser-refresh.vim](https://github.com/mkitt/browser-refresh.vim/blob/master/doc/browser-refresh.txt)
    Only needed by *markdown-preview.vim*, which was removed as well.


# If you want to get fancy

## Recommended tools

Virtually all of these are optional.. All depends on what you want to do:

- [Ruby 2.2][ruby]
- [Ruby 1.8.7][ruby] - Yep, **both** *Ruby 2.0.0* and *Ruby 1.8.7*.  *Ruby
  1.8.7* is used by Vim internally and, in turn, by some of the Vim bundles
  that are installed as *DR-Vimfiles*.  Both versions of *Ruby* should be able
  to coexist.
- [Python 2.7][python] - Used by some of the bundles that are part of
  *DR-Vimfiles*.  *Python 2.7* seems to be the sweet spot in terms of
  compatibility between bundles.
- [Exuberant Ctags][ctags] - Ctags generates an index (or tag) file of language
  objects found in source files that allows these items to be quickly and
  easily located by a text editor or other utility. A tag signifies a language
  object for which an index entry is available (from the Exuberant Ctags site).


## Installation Details

Want to install some of the tools mentioned above?  This section is for you.

### OS X - MacPorts or Homebrew?

On an OS X system you will need one of the two following package
managers/environments installed, *not both*:

- [MacPorts][macports] - The MacPorts Project is an open-source community
  initiative to design an easy-to-use system for compiling, installing, and
  upgrading either command-line, X11 or Aqua based open-source software on the
  Mac OS X operating system (from their site).
- [Homebrew][homebrew] - Homebrew installs the stuff you need that Apple
  didn’t (from their site).

If you are not already using either MacPorts or Homebrew, it is worth doing
your research.  Both have their pros and cons;  Both have their intended
user bases.

Personally, I use [MacPorts][macports] for various reasons and only going to
maintain the MacPorts section of this documentation.

If someone is willing to pick up the reins on the [Homebrew][homebrew] side,
the assistance would greatly appreciated.


### <a id="macports_install"></a>MacPorts (OS X)

This section is intended for [MacPorts][macports] users.

If you have not already installed MacPorts, please go to the [MacPorts
installation page][macports_install].

Install Ruby 2.2.x, Vim will automatically install Ruby 1.8.7 on its own:

    sudo port install ruby22
    sudo port select --set ruby ruby22

Remember, you need Ruby 2.2.x of greater for some of the external tools.

Install ctags:

    sudo port install ctags

If you have version of Vim built with the *+ruby* AND *+python*
options set, you are done.  Proceed to the [Common Installation
Tasks](#common_install) section below.  To see Vim's build options:

    vim --version

If your version of Vim was not built with Ruby and Python support, proceed with
the rest of this section.

    # Install Python 2.7:
    sudo port install python27
    sudo port select --set python python27

    # Build and install Vim with Ruby and Python support:
    sudo port install vim +python27 +ruby

Depending on your needs, you might want to consider installing some of the
following as well:

    # Node.js & NPM
    sudo port install nodejs npm

    # *TODO* More to come


### <a id="homebrew_install"></a>Homebrew (OS X)

This section is intended for [Homebrew][homebrew] users.  **If you are using
MacPorts, please skip this section.**

I know little about maintaining an environment with [Homebrew][homebrew], so
the following is practically verbatim from the old documentation.

Assistance maintaining this section would be appreciated.

- [Homebrew][homebrew] - `ruby -e "$(curl -fsSL
  https://gist.github.com/raw/323731/install_homebrew.rb)"`
- [MacVim][macvim] - `brew install macvim`
- [discount][discount] - `brew install discount `
- [ctags][ctags] - `brew install ctags `

You can now proceed to the [Common Installation Tasks](#common_install)
section.


### Ubuntu (Linux)

***TODO***

You can now proceed to the [Common Installation Tasks](#common_install)
section.


### <a id="common_install"></a>Common Installation Tasks

***TODO***


## Pimp Your Ride

The `install.sh` script created a `.vimrc.local` file. This stores local
configurations based on the user's needs, it is loaded after the `.vimrc` file.
Anything created in `.vimrc.local` overrides settings set in `.vimrc`. This
file is ignored and not checked back into the repository. It's recommended you
keep a backup of this somewhere.

You'll want to tune a few settings right off the bat. Open the `.vimrc.local`
file (in Vim type `,evl` a mnemonic is "*edit vimrc local*").

1. Uncomment `g:yankring_history_dir` and optionally change it's path,
otherwise `yankring` will save it's history in a file in your `$HOME` directory
- Optional, point `g:MarkdownPreviewUserStyles` to the directory where your
  user specific style sheets for the markdown previewer reside. If your an F/
  peop, you can clone the repository for [F/ Markdown Themes][fmd-themes] and
  gain templates and style sheets to keep you out of MS Word.
- Set the default browser by changing `g:RefreshRunningBrowserDefault`. Use
  "chrome", "safari", or "firefox"
- It's recommended to uncomment the entire conditional under *User GUI specific
  settings*. We roll with the [custom font MesloGM][MesloGM] at 12px. You'll
  need to download and install it, otherwise roll with Monaco or something if
  you want to go blind. If you want to set a transparency, you'll need to
  enable *Use experimental renderer* in MacVim's preferences -> Advanced
  settings. The primary reason for uncommenting this conditional is, you'll
  find certain plug-ins need to be disabled or have certain settings applied to
  work across MacVim and various \*nix environments.

You can apply custom key bindings in `.vimrc.local`, configure plug-ins, or
override default settings.


## Managing Plug-Ins

Plug-ins are managed using [vim-pathogen][pathogen].


### Adding new Pathogen modules

In the following example we are installing *vim-instant-markdown.git*:

    $ homeshick cd dr-vimfiles
    $ git submodule add \
            git@github.com:suan/vim-instant-markdown.git \
            home/.vim/bundle/vim-instant-markdown
    $ homeshick symlink


### Removing a Pathogen modules

Assuming:
  - you have [git-submodule-tools][git-submodule-tools] installed.
  - are uninstalling `markdown-preview.vim`.

Do the following:

    $ homeshick cd dr-vimfiles
    $ cd home/.vim/bundle/markdown-preview.vim/
    $ git checkout master
    $ homeshick cd dr-vimfiles
    $ git-rm-submodule home/.vim/bundle/markdown-preview.vim
    $ git push
    $ find ~/.vim -xtype l -print
    $ find ~/.vim -xtype l -print -delete


### Updating individual Pathogen modules

To pull upstream changes for all of the submodules run the following:

    $ cd ~/.homesick/repos/dr-vimfiles/home/.vim/bundle/bufexplorer
    $ git fetch
    $ git tag
    $ git checkout v7.4.6
    $ homeshick cd dr-vimfiles
    $ git add home/.vim/bundle/bufexplorer
    $ git commit -m 'Updated bufexplorer to more recent version.'
    $ git push
    $ find ~/.vim -xtype l -print
    $ find ~/.vim -xtype l -print -delete
    $ homeshick link dr-vimfiles


### Updating all Pathogen modules

  1. Quit out of Vim
  2. Update everything:
     ```
     $ homeshick cd dr-vimfiles
     $ git pull --rebase
     $ ./update
     $ find ~/.vim -xtype l -print
     $ find ~/.vim -xtype l -print -delete
     $ homeshick link dr-vimfiles
     ```
  3. Start up vim and make sure it works.
  4. If it all works!
     ```
     $ git commit -a -m "Updating all submodules."
     $ git push
     ```

Submodule plug-ins generate `doc/tag` files associated with help documents
every time Vim is launched. This creates conflicts associated with pulling,
updating or committing changes back to the main repository. It's necessary to
clean these out before running any pulls or commits.

There are two shell scripts included to help in this process
[clean.sh][clean.sh] and [update.sh][update.sh].


## Syntax Checkers

The configuration uses [syntastic][syntastic] quite heavily, most of it is out
of the box. Buffers are checked after each save.

The JavaScript syntax checker runs [JSHint][jshint] instead of jsl which is
included with [syntastic][syntastic]. The executable to [JSHint][jshint] runs
on [node.js][nodejs] and needs to be installed via [npm][npm]. Also install the
custom configuration JSON file into your `$HOME` directory. Instructions for
doing this are located at the [jshint-config][jshint-config] repository. This
installation will make it global to your machine. If you need a specific
configuration on a per project basis, just drop a `.jshintrc` file in your
project directory and tweak the settings.

There is also an Objective C checker included. This uses the `gcc` and requires
the `cwd` to have the `.xcodeproj` file in it.

To learn more about [syntastic][syntastic] and syntax checkers, type `:h
syntastic`


## Tips


### FCheat

Within Vim type `:h fcheat` to view key and leader bindings for the F/
configuration


### Turn Caps Lock Into The Control Key

The control key is in an awkward position and the caps lock key is basically
useless. It's right there in the home row, so you might as well put it to good
use.

1. Open up System Preferences
- Select `Keyboard`
- Select `Modifier Keys`
- From the drop down, select `^ Control` under the `Caps Lock` setting
- In the `Select Keyboard` drop down, you'll want to set it for both internal
  and external keyboards


### Alias MacVim

1. Launch [MacVim][macvim] from Terminal by typing `mvim` and hitting enter
- Right click the logo in your dock and select `Options > Show in Finder`
- Create an alias of `MacVim.app` and drop it in the `/Applications/` directory
  (this will allow it to be found by Spotlight)
- Optionally choose to keep the icon in your dock `Options > Keep in Dock`


### Alias MacVim's install of Vim For Terminal

Fire up your `.bashrc`, `.zshrc` or wherever your aliases are and add the
following:

    alias vim='/usr/local/Cellar/macvim/v7.3-53/MacVim.app/Contents/MacOS/Vim'

Your path may be different depending on the latest version from
[homebrew][homebrew].

Once you point the alias to [MacVim's][macvim] Vim executable, you should be
able to run plug-ins and crap that depend on ruby, python and so on. While you
won't get all the niceties of the gui app, you'll at least have a similar
install for your Terminal as what's in [MacVim][macvim].


### Mouse Support For Terminal

To get full mouse support (scrolling, clicking, etc...) within Terminal Vim,
install the SIMBL [MouseTerm](http://bitheap.org/mouseterm/) plug-in. It brings
the goodness.


## License and Contributions

All licensing for the Bundles/Plug-ins should be found in their respective
repositories. Anything written by F/ is of course open source through MIT.
While contributions are welcome, you're probably better off forking and tuning
it to your own machine.

Copyright (c) 2014 by DigitalRounin.com

Copyright (c) 2011 by Factory Design Labs

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
[homeshick]: https://github.com/andsens/homeshick

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
[ctags]: http://ctags.sourceforge.net/
[discount]: http://www.pell.portland.or.us/~orc/Code/discount/
[vim-scripts]: https://github.com/vim-scripts
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
[git-submodule-tools]: https://github.com/kollerma/git-submodule-tools
[dr-vimfiles-python]: https://github.com/digitalrounin/dr-vimfiles-python
[dr-vimfiles-nodejs]: https://github.com/digitalrounin/dr-vimfiles-nodejs
[vim-colors-solarized]: https://github.com/altercation/vim-colors-solarized
[vim-colorscheme-switcher]: https://github.com/xolox/vim-colorscheme-switcher.git
[romainl/Apprentice]: https://github.com/romainl/Apprentice
[dhruvasagar/vim-railscasts-theme]: https://github.com/dhruvasagar/vim-railscasts-theme.git
[nanotech/jellybeans.vim]: https://github.com/nanotech/jellybeans.vim
[morhetz/gruvbox]: https://github.com/morhetz/gruvbox
