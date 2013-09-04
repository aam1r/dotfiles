# dotfiles

## Installation

Clone the repository (I keep it in `~/src/dotfiles/`). The bootstrapper script
will pull in the latest version and copy the files to your home folder.

```bash
git clone https://github.com/aam1r/dotfiles.git
cd dotfiles
python bootstrap.py
```

## Usage

Creating `~/.secret` allows you to have a file containing secret contents (i.e.
things you don't want to commit). An example would be your git credentials so
people don't accidentally commit under your name if they were to clone this
repo:

```
GIT_AUTHOR_NAME="Your Name"
GIT_AUTHOR_EMAIL="you@email.com"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.name "$GIT_AUTHOR_NAME"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

You could also use `~/.secret` to override settings, functions, aliases and
declare custom `$PATH` variables.

## Plug

Looking into modifying your `vimrc` without spending hours? Check out [sachet](http://yoursachet.com)!
