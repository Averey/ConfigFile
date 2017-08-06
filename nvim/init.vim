let GitRepo = 'E:\\GitRepo\\configFile\\'
let mapleader=" "
<<<<<<< HEAD
"noremap \ ,
=======
>>>>>>> 489b008070d2cdfbfbc518614642da7f94c0179c

" 加载其他配置文件
let configPath = GitRepo . 'nvim\\'
let configFile = ['basic.vim', 'plugin.vim']
for config in configFile
    exec 'source ' . configPath . config
endfor
