
powershell -Command "iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim | ni ~/.vim/autoload/plug.vim -Force"

cmd /c mklink %homepath%\.vim\vimrc %cd%\vimrc
cmd /c mklink %homepath%\.vim\plugins.vim %cd%\plugins.vim
cmd /c mklink %homepath%\.vim\config.vim %cd%\config.vim
cmd /c mklink %homepath%\.vim\keys-map.vim %cd%\keys-map.vim
cmd /c mklink %homepath%\.vim\coc-config.vim %cd%\coc-config.vim
cmd /c mklink %homepath%\.vim\coc-settings.json %cd%\coc-settings.json
