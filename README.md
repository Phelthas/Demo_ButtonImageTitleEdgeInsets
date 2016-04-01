# Demo_ButtonImageTitleEdgeInsets
用button的titleEdgeInsets和 imageEdgeInsets属性来实现button文字图片上下或者左右排列的demo

![image](https://raw.githubusercontent.com/Phelthas/Demo_ButtonImageTitleEdgeInsets/master/Screenshots/screenshot2.png)    
[这里](http://www.cnblogs.com/Phelthas/p/4452235.html)有一篇总结    


发现这个功能还挺常用的，每次都抄一遍也不方便，所以就封装为button的一个分类方法，只需一行代码就可以搞定~    
`[self.twoButton_line setImagePosition:LXMImagePositionTop spacing:10]; `       


## 支持 CocoaPods    
现在可以用CocoaPods按安装了
在你的podfile中添加    
`pod 'LXMButtonImagePosition', '~> 1.1.0'`    
然后在需要用的地方引入头文件    
`#import <UIButton+LXMImagePosition.h>`  


## Update
1.1.0     
加入对contentInset的考虑，使button的intrinsicSize计算正确，更好的配合autoLayout


## License
LXMButtonImagePosition is provided under the MIT license. See LICENSE file for details.



