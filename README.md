# UI-23-UITableViewSecondMenu
###双控制器版本

-  #### 思路:两个不同的控制器，放两个tableview然后其中一个加载子标题，需要加载子标题的的控制器，监听被点击的那个控制器。可以用代理来解决监听事件，当tableview的某一个cell被点击的时候把这个被点击的cell的是哪一行传出去。
-  #### 复习代理
	-  ##### 代理书写格式
	- ##### @protocol 代理名字(当前类的名字 + Delegate) <NSObject>
	  ##### @optionl (写代理方法，代理要做什么事情？点击category控制器把XCCategoryItem.subCategory数组传出去)
	  ##### @end
	  
	- ##### 代理生成为属性 需要遵守代理的协议，不然不可以实现代理的方法，注意代理用 ARC 下 week  MAC 用 assign (用strong会一直持有对象不会释放)
	- ##### 验证成为代理的方法有没有实现代理的方法 
	```
	if([self.delegate respondsToSelector:代理方法]){
		代理需要传出的值是什么
	}
	```
- #### 需要加载子控制器的tableview实现代理方法，把传过来的子标题，加到一个数组中去，tableviewcell.textLabel的值就从这个数组中取，在实现完代理方法之后，需要刷新一下表格。
- #### 用这个方法主要是为了复习代理方法和 addchildViewController