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

特别的文件夹路径参数：***26.6***







