#### 简述

* 可以打印中文字典/数组的分类,格式化输出,支持控制台`po`命令
* 支持对控件的打印,比如view.subviews
* 运用的是方法交换,只是对系统的debugDescription方法做转码处理,因此格式保留为系统风格
* 只在DEBUG模式下有效,对线上版本无干扰
#### 效果:


![用NSLog打印效果](https://github.com/iOSSinger/CNLog/raw/master/shot1.png)



![控制台使用po命令效果](https://github.com/iOSSinger/CNLog/raw/master/shot2.png)


#### 如何使用

直接拖进项目中去即可.非常简单.