//
//  main.m
//  Stringz
//
//  Created by 初见寻常 on 16/5/7.
//  Copyright © 2016年 初见寻常. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableString *str = [[NSMutableString alloc] init];
        for (int i = 0; i < 10; i++) {
            [str appendString:@"Aaron is cool!\n"];
        }
        
        // 声明一个指向NSError对象的指针，但是不创建相应的对象
        // 实际上，只有当发生错误时，才会由writeToFile创建相应的NSError对象
        
        NSError *error;
        
        // 将NSError指针通过引用传入writeToFile:automically:encoding:error方法
        
        BOOL success = [str writeToFile:@"/tmp/cool.txt"
                             atomically:YES
                               encoding:NSUTF8StringEncoding
                                  error:&error];
        
        /*[str writeToFile:@"/tmp/cool.txt"
               atomically:YES
                 encoding:NSUTF8StringEncoding
                   error:NULL];*/
        
        // 检索返回的布尔值，如果写入文件失败，就查询NSError对象并输出错误描述
        
        if (success) {
            NSLog(@"done writing /tmp/cool.txt");
        } else {
            NSLog(@"writing /tmp/cool.txt failed: %@", [error localizedDescription]);
        }
        
        
        
    }
    return 0;
}
