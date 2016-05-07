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
        
        [str writeToFile:@"/tmp/cool.txt"
               atomically:YES
                 encoding:NSUTF8StringEncoding
                   error:NULL];
        
        NSLog(@"done writing /tmp/cool.txt");
        
    }
    return 0;
}
