
#Base obj-C
类包含属性和方法。

实例变量隐藏在属性之后。

实例变量通常以下划线开始命名成 _varName 这个样子，与之对应关于这个变量的读取方法的名字则分别为setVarName和varName。

如果 _varName的类型为int，那么读取方法的形式分别是：

* \- (void) set**V**arName:(int) v;

* \- (int) varName;

如果直接声明一个属性：

* @property (nonatomic) int varName;

会隐含的产生一个实例变量 _varName。并且可以直接通过.操作符来读取变量。

表示类对象自己使用 self。

表示或需要饮用类对象的父类则使用 super。

类拥有自己的表述信息，可以自定义，通过重写description方法来定义。通过NSLog(@" %@ ", object);来显示。

弱引用。

NSDataWritingAtomic属性为写文件提供了保护。

特别的文件夹路径参数：***26.6***。

对指针类型的（外部）变量，Block对象会使用**强引用**。于是这样当在Block中使用self的话，就容易产生一个强引用循环。为了打破这个强引用循环，做了一群有点“匪夷所思”的处理（***28.3***）。暂时还不理解这一些的意义。。。而直接在Block对象中使用实例变量，Block会捕获self，而不会捕获实例变量，进而又产生强引用循环。所以**不可在Block中直接使用实例变量**。
对于Block而言的外部变量，感觉就是有别于参数的全局变量似的。

#iOS

application:didFinishLaunchingWithOptions: 方法，第一个应用委托回调方法，凡是需要在程序能够和用户交互前就完成的初始化工作，都应该在该方法中实现。







