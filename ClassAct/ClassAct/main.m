//
//  main.m
//  ClassAct
//
//  Created by 初见寻常 on 16/6/25.
//  Copyright © 2016年 初见寻常. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "BNRTowel.h"

NSArray *BNRHierarchyForClass(Class cls){
    
    // 声明一个数组用来保存类及其父类组成的列表，创建一个层级
    NSMutableArray *classHierarchy = [NSMutableArray array];
    
    // 继续追踪继承层级，直到再也没有父类
    for (Class c = cls; c != Nil; c = class_getSuperclass(c)) {
        NSString *className = NSStringFromClass(c);
        [classHierarchy insertObject:className atIndex:0];
    }
    
    return classHierarchy;
}

NSArray *BNRMethodsForClass(Class cls) {
    unsigned int methodCount = 0;
    
    Method *methodList = class_copyMethodList(cls, &methodCount);
    
    NSMutableArray *methodArray = [NSMutableArray array];
    
    for (int m = 0; m < methodCount; m++) {
        // 获取当前的方法
        Method currentMethod = methodList[m];
        // 获取当前方法的选择器
        SEL methodSelector = method_getName(currentMethod);
        // 给数组增加字符串表示形式
        [methodArray addObject:NSStringFromSelector(methodSelector)];
    }
    
    return methodArray;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 虽然没有观察的对象，但是仍然发送一条addObserver:消息，更新运行时
        BNRTowel *myTowel = [BNRTowel new];
        [myTowel addObserver:nil
                  forKeyPath:@"lacation"
                     options:NSKeyValueObservingOptionNew
                     context:NULL];
        
        // 创建一个字典数组，每个字典都会保存类的名称、层级以及给定类的方法列表
        NSMutableArray *runtimeClassesInfo = [NSMutableArray array];
        
        // 声明一个变量，用来保存注册类的数量
        unsigned int classCount = 0;
        
        // 创建一个指针指向应用当前加载的所有注册类的列表
        // 通过引用返回注册类的数量
        
        Class *classList = objc_copyClassList(&classCount);
        
        // 列举表单中的每个类
        for (int i = 0; i < classCount; i++) {
            // 将类的列表作为一个C语言数组处理，获取其中的一个类
            Class currentClass = classList[i];
            
            // 将类的名称作为字符串处理
            NSString *className = NSStringFromClass(currentClass);
            
            // 输出类的名称
            //NSLog(@"%@",className);
            
            NSArray *hierarchy = BNRHierarchyForClass(currentClass);
            
            NSArray *methods = BNRMethodsForClass(currentClass);
            
            NSDictionary *classInfoDict = @{@"className" : className,
                                            @"hierarchy" : hierarchy,
                                            @"methods" : methods};
            
            [runtimeClassesInfo addObject:classInfoDict];
        }
        
        // 现在已经不需要这个类列表的缓存区了，释放它
        free(classList);
        
        // 按字母顺序给这些类排序，打印出来
        NSSortDescriptor *alphaAsc = [NSSortDescriptor sortDescriptorWithKey:@"name"
                                                                   ascending:YES];
        NSArray *sortedArray = [runtimeClassesInfo sortedArrayUsingDescriptors:@[alphaAsc]];
        
        NSLog(@"There are %ld classes registered with this program's Runtime.", sortedArray.count);
        
        NSLog(@"%@",sortedArray);

    }
    return 0;
}
