# DR-Vimfiles

DR-Vimfiles is a fork of [factorylabs/vimfiles][flvimfiles].  It looks like
[factorylabs/vimfiles][flvimfiles] has been sitting dormant for the last few
years.  There's a lot of great work in there that should be continued, and
improved upon.  DR-Vimfiles is an attempt at that.

***Please keep in mind thathis is a work in progress, and should not be
considered unstable for now***

Tuned to play nice with [Vim][vim] on  OS X but works with most \*nix
environments. Setup using [homesick][homesick] for that symlinkn' goodness.


## Prerequisites 

This covers system level prerequisites.

Virtually all of these are optional, but **highly** recommended:

- [Ruby 2.0.0][ruby] -  needed to run the latest version of [Redcarpet
  2][redcarpet], else you will be limited to *Redcarpet 2.3.0*, which uses
  *Ruby 1.8.7*.
- [Ruby 1.8.7][ruby] - Yep, **both** *Ruby 2.0.0* and *Ruby 1.8.7*.  *Ruby
  1.8.7* is used by Vim internally and, in turn, by some of the Vim bundles
  that are installed as *DR-Vimfiles*.  Both versions of *Ruby* should be able
  to coexist.
- [Python][python] - Either *Python 2* or *Python 3* will do.  *Python* is used
  by some of the bundles that are part of *DR-Vimfiles*.
  [SirVer/ultisnips][ultisnips] being the main one.
- [Homesick][homesick] - Homesick is sorta like rip, but for dotfiles. It uses
  git to clone a repository containing dotfiles, and saves them in ~/.homesick.
  It then allows you to symlink all the dotfiles into place with a single
  command (from the Homesick site).
- [Redcarpet][redcarpet] - Redcarpet is Ruby library for Markdown processing
  that smells like butterflies and popcorn (from the Redcarpet site).  It is
  used by a lot of the bundles when dealing with Markdown documents.
- [Exuberant Ctags][ctags] - Ctags generates an index (or tag) file of language
  objects found in source files that allows these items to be quickly and
  easily located by a text editor or other utility. A tag signifies a language
  object for which an index entry is available (from the Exuberant Ctags site).


If you are planning on doing JavaScript development, consider installing the
following:

- [Node.js][nodejs] - Node.js is a platform built on Chrome's JavaScript
  runtime for easily building fast, scalable network applications. Node.js uses
  an event-driven, non-blocking I/O model that makes it lightweight and
  efficient, perfect for data-intensive real-time applications that run across
  distributed devices (from their site).
- [npm][npm] - Node Packaged Modules.
- [JSLint][nodejslint] - Easily use JSLint from the command line (from their
  site).
- [JSHint][nodejshint] - JSHint is a community-driven tool to detect errors and
  potential problems in JavaScript code and to enforce your team’s coding
  conventions. It is very flexible so you can easily adjust it to your
  particular coding guidelines and the environment you expect your code to
  execute in (from their site).

## Simple Installation

Now, assuming you have all the prerequisites in place installation this simple:

    homesick clone https://github.com/digitalronin-me/dr-vimfiles
    cd ~/.homesick/repos/dr-vimfiles/
    bash install.sh
    homesick symlink dr-vimfiles -f

This will install the default configuration files/directories, submodules, and
create symbolic links for bundles and snippets. Most of the heavy lifting is
done by the [install script][install.sh].

At this point you should have a default setup ready to rock. You're going to
want to tune it a bit to your environment, so go forth and "Pimp Your Ride".


## Installation Details

Missing some of the prerequisites?  This section is for you.  

***In fact!  Everyone should at least skim this section to make sure that they
did not miss anything.***  Just say'n.  You have been warned


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

Install Ruby 2.0.0, Vim will automatically install Ruby 1.8.7 on its own:

    sudo port install ruby20
    sudo port select --set ruby ruby20

Remember, you need Ruby 2.0.0 of greater for some of the external tools.

Install ctags:

    sudo port install ctags

If you have version of Vim built with the *+ruby* AND (*+python* OR *+python3*)
options set, you are done.  Proceed to the [Common Installation
Tasks](#common_install) section below.  To see Vim's build options:

    vim --version

If your version of Vim was not built with Ruby and Python support, proceed with
the rest of this section.

    # Install Python 3.3:
    sudo port install python33
    sudo port select --set python python33
    
    # Build and install Vim with Ruby and Python support:
    sudo port install vim +python33 +ruby 

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

    # Install Homesick
    sudo gem install homesick

    # Install Redcarpet
    sudo gem install redcarpet

You might want to consider installing the following as well:

    sudo npm update -g 
    sudo npm install jshint -g
    sudo npm install jslint -g


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
- Give yourself a signature with `g:snips_author` by including your name for
  various [snipmate][snipmate] snippets
- Optionally uncomment one of the `colorschemes`, there are 4 included as
  described below, the default is `colorblind`
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


## Updating

Submodule plug-ins generate `doc/tag` files associated with help documents
every time Vim is launched. This creates conflicts associated with pulling,
updating or committing changes back to the main repository. It's necessary to
clean these out before running any pulls or commits.

There are two shell scripts included to help in this process
[clean.sh][clean.sh] and [update.sh][update.sh].


### Updating From The F/ Repository

To update from the latest changes in the F/ repository run the following:

1. Quit out of Vim
- `bash clean.sh`
- `git stash` or `git add` any updates from your environment spit out by the
  `clean.sh` call to `git status`
- `git pull --rebase`

Commit your changes back up to the repository.


### Updating Submodules

To pull upstream changes for all of the submodules run the following:

1. Quit out of Vim
- `bash update.sh`
- `git stash` or `git add` any updates from your environment spit out by the
  `clean.sh` call to `git status`
- `git pull --rebase`

Commit your changes back up to the repository. F/ will run this script once a
week to keep the submodules as up to date as possible.


## Plug-Ins

Plug-ins are managed using [vim-pathogen][pathogen].  For a list of all
plug-ins, and informationon how to manage them, please refer to the `README` file
in `dr-vimfiles/home/.vim/core-upstream/bundle/`.


## Snippets

By default all of the snippet files stored within `snippets_storage` are
symlinked into the `snippets` directory. These cover most of the languages used
at F/. To see the available snippets for a given file type hit `<F5>`, a
snippet is triggered using `<tab>`.

Certain file types like JavaScript have hundreds of snippets based on the
native language and various libraries. This can become unmanageable pretty
quickly. The solution is to breakout specific libraries into their own files.
For example `javascript-jasmine.snippets` where it needs to be named as
`language-library.snippets`. Since snippets are saved in the `snippets_storage`
directory, you can be selective about what gets a symbolic link within the
`snippets` directory.

If you are working in a project that includes jQuery, you would only have
symbolic links created for `javascript.snippets`,
`javascript-jasmine.snippets`, and `javascript-jquery.snippets`. Another
project that uses [node.js][nodejs], you could delete the symbolic link to
`javascript-jquery.snippets` and add in `javascript-node.snippets` instead.
This will give you a more manageable list of snippets to work with. By default,
all snippets are included at installation, you'll want to tune these based on
your needs.

To learn more about [snipmate][snipmate] and creating snippets, type `:h
snipmate`

For a quick way to do this, you may want to [create a shell
script](https://gist.github.com/781626) to help automate the process. You'll
need to restart Vim for the snippets to take affect.


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


## Editor Themes

Themes included with this configuration:

1. `colorblind`: Black background, super vibrant colors
- `snowblind`: White background, vibrant colors
- `cataracts`: Grey background with muted colors
- `bloodshot`: Similar to colorblind but with muted colors

In the `extras` directory are Terminal themes to match the Vim color themes.

To use the Terminal themes, install [SIMBL
0.9.7](http://www.culater.net/software/SIMBL/SIMBL.php) and save the [64 Bit
Terminal Colors](http://github.com/timmfin/terminalcolours) plug-in to:

    ~/Library/Application Support/SIMBL/Plugins/


The color themes have been designed with similarities in the syntax settings.
Jumping between multiple languages should be easy on the mind and the eyes. Be
adventurous and mix it up once in a while.

**Most themes use the custom [MesloGM
font](https://github.com/andreberg/Meslo-Font). Download, install and live the
dream.**


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


### Working With Your Own Submodules

In order to keep your personal submodules available to forks but allow commits
back to the upstream master repository from within the submodule:

1. Create the repository for your bundle within git
-  Then from the `vimfiles` directory add the submodule as you would any other
   submodule
-  Within your newly created submodule, create a remote reference to the
   upstream master repository
-  Make changes to the submodule and push updates back to the remote upstream
   master
-  Then whenever you pull updates to all of your submodules, you as well as
   everyone else should get the changes

Here is an example:

    cd ~/.homesick/repos/vimfiles/
    git submodule add git://github.com/username/submodule-name.vim.git home/.vim/bundle_storage/submodule-name.vim
    cd home/.vim/bundle_storage/submodule-name.vim/
    git remote add push git@github.com:username/submodule-name.vim.git
    git submodule init
    git submodule update
    ln -s ~/path/to/vimfiles/bundle_storage/submodule-name.vim ~/path/to/vimfiles/bundle/submodule-name.vim

Then whenever you make changes to the submodule:

    cd ~/.homesick/repos/vimfiles/home/.vim/bundle_storage/submodule-name.vim/
    git push push master

This allows you to make changes directly in your submodule, see the effects and
push the changes back without maintaining multiple repositories and linking
them back and forth. [Defunkt][defunkt] has a good article about [working with
submodules][defunkt-subs].


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
[ultisnips]: https://nipsithub.com/SirVer/ultisnips
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
[snipmate]: https://github.com/msanders/snipmate.vim
[pathogen]: https://github.com/tpope/vim-pathogen
[fmd-themes]: https://github.com/factorylabs/fmd-themes
[MesloGM]: https://github.com/andreberg/Meslo-Font
[defunkt]: http://github.com/defunkt
[defunkt-subs]: http://github.com/guides/developing-with-submodules
[jshint-config]: https://github.com/factorylabs/jshint-config 

