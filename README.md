## About

This is my .vimrc.  I edit LaTeX, Haskell, and Racket a lot, so my settings have been created
with that in mind.  I tend to avoid plugins until I am sure they are useful.

## Quick Start

+ Clone the repository.  You should back up your old .vim folder first.

    ```
    git clone https://mattoxbeckman@bitbucket.org/mattoxbeckman/vimrc.git ~/.vim
    ```

+ Clone Vundle

    ```
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    ```

+ Create a soft-link to the `.vimrc` file:

    ```
    ln -s ~/.vim/vimrc ~/.vimrc
    ```

+ Optional: install the Inconsolata font, otherwise, comment out that line in the vimrc file.

    ```
   "set guifont=Inconsolata\ Medium\ 14 
    ```

+ Start vim and run the bundle installer

    ```
    :BundleInstall
    ```

## Included Bundles

1. Rainbow Parens
2. Racket Mode
3. Vim Fugitive for working with git
4. Paredit for lispy parens editing
