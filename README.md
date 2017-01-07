#SxnanVimConf

1. Run 

   ``` ./download.py ```

1. Copy files to home direcoty

   ``` cp .vimrc .ycm_extra_conf.py ~ ```

1. Install Plugin

   Chane directory ```cd ~```  
   Open .vimrc with vim ```vim .vimrc```  
   Install plugin ```:PlugInstall```

1. Install Cmake

    ``` sudo apt-get install build-essential cmake ```

1. Python Header

   ``` sudo apt-get install python-dev python3-dev ```

1. Compiling YCM with semantic support for C-family Languages

   ```
   cd ~/.vim/plugged/YouCompleteMe  
   ./install.py --clang-completer
   ```
