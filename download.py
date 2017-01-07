from os import path
import urllib

downloadpath = path.expanduser('~') + '/.vim/autoload/'
if not path.exists(downloadpath):
    path.os.makedirs(downloadpath)
    print('Path is created')

print('Downloading plug.vim')
urllib.urlretrieve('https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim', downloadpath + 'plug.vim')
print('Download finished')
