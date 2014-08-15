NLBouncePagination
==================

iOS仿淘宝详情滑动翻页

![demo](https://cloud.githubusercontent.com/assets/1229684/3931388/18590668-2457-11e4-8128-738975dbfece.gif)

## 使用

1. 把 `NLBouncePagination` 拖到工程里，注意选中`Copy items into destination group‘s folder (if needed)`。
2. 创建两个`UITableViewController`，一个是主页显示，一个上拉后出现的子页显示，分别继承`NLMainTableViewController`和`NLSubTableViewController`。
3. 最后，在主页的VC的`viewDidLoad`里关联上子页VC即可

	```
	self.subTableViewController = [[DemoSubViewController alloc] init];
	```	
	
## 协议
MIT	

