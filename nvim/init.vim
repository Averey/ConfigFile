let GitRepo = 'E:\\GitRepo\\configFile\\'
let mapleader=" "
"noremap \ ,

" 加载其他配置文件
let configPath = GitRepo . 'nvim\\'
let configFile = ['basic.vim', 'plugin.vim']
for config in configFile
    exec 'source ' . configPath . config
endfor
