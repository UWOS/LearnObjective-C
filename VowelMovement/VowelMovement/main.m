//
//  main.m
//  VowelMovement
//
//  Created by 初见寻常 on 16/5/21.
//  Copyright © 2016年 初见寻常. All rights reserved.
//

#import <Foundation/Foundation.h>

//typedef void (^ArrayEnumerationBlock)(id, NSUInteger, BOOL *);   // exce 28.1

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 创建两个数组对象，分别用于保存最初的字符串对象和去除元音字母后的版本
        NSArray *originalStrings = @[@"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississippi"];
        NSLog(@"original strings: %@", originalStrings);
        
        NSMutableArray *devowelizedStrings = [NSMutableArray array];
        
        // 创建数组对象，保存需要从字符串中移除的字符
        NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
        
        // 声明Block变量
        //void (^devowelizer)(id, NSUInteger, BOOL *);
        //ArrayEnumerationBlock devowelizer;   // exce 28.1
        
        // 将Block对象赋给变量
        /*devowelizer = ^(id string, NSUInteger i, BOOL *stop) {
            NSRange yRange = [string rangeOfString:@"y" options:NSCaseInsensitiveSearch];
            
            // 是否包含字符'y'？
            if (yRange.location != NSNotFound) {
                *stop = YES;   // 执行完当前的Block对象后终止枚举过程
                return;   // 结束当前正在执行的Block对象
            }
            
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            // 枚举数组中的字符串，将所有出现的元音字母替换成空字符串
            for (NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s
                                           withString:@""
                                              options:NSCaseInsensitiveSearch
                                                range:fullRange];
            }
            
            [devowelizedStrings addObject:newString];
        };   // Block变量赋值结束
        */   // exce 28.1
        
        // 枚举数组对象，针对每个数组中的对象，执行Block对象devowelizer
        [originalStrings enumerateObjectsUsingBlock: /* devowelizer   exce 28.1 */
         ^(id string, NSUInteger i, BOOL *stop) {
            NSRange yRange = [string rangeOfString:@"y" options:NSCaseInsensitiveSearch];
            
            // 是否包含字符'y'？
            if (yRange.location != NSNotFound) {
                *stop = YES;   // 执行完当前的Block对象后终止枚举过程
                return;   // 结束当前正在执行的Block对象
            }
            
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            // 枚举数组中的字符串，将所有出现的元音字母替换成空字符串
            for (NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s
                                           withString:@""
                                              options:NSCaseInsensitiveSearch
                                                range:fullRange];
            }
            
            [devowelizedStrings addObject:newString];
        }/* exce 28.1 */];
        NSLog(@"new strings: %@", devowelizedStrings);
        
    }
    return 0;
}
