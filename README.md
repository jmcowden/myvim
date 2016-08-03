# myvim
This is my personal vim setup.

## Vim-plug

I use [vim-plug](https://github.com/junegunn/vim-plug "vim-plug") to manage my plugins. To install, run:
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Then source your .vimrc and run `:PlugInstall`.

### Plugin issues

The ShowMarks plugin needs to have a directory created:
```
mkdir ~/.vim/plugged/Showmarks/doc
```
