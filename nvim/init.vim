let mapleader=","
noremap \ ,

" 加载其他配置文件
let configPath = 'E:\\GitRepo\\configFile\\nvim\\'
let configFile = ['basic.vim', 'plugin.vim', 'nyaovim.vim']
for config in configFile
    exec 'source ' . configPath . config
endfor
