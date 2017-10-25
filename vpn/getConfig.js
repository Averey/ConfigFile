/**
* 影速节点列表配置文件生成脚本
* 使用：节点列表页打开控制台 copy 代码过去，回车即可
*/
var selector = 'button[name=download]';
var items = document.querySelectorAll(selector);
var objects = [];
for ( let i = 0; i < items.length; i++ ) {
  var info = items[i].attributes['data-params'].value;
  var infoArray = info.split('|');

  var node = {};
  node.method = infoArray[0];
  node.password = infoArray[1];
  node.server = infoArray[2];
  node['server_port'] = infoArray[3];
  objects.push(node);
}
console.log(JSON.stringify(objects));
