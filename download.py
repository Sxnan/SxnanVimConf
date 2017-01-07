from os import path
import urllib

if not path.exists('~/.vim/autoload'):
    path.os.mkdir('~/.vim/autoload')
    print('Path is created')

print('Downloading plug.vim')
urllib.urlretrieve('https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim', '~/.vim/autoload/plug.vim')
print('Download finished')
