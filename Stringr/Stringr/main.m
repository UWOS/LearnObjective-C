//
//  main.m
//  Stringr
//
//  Created by 初见寻常 on 16/5/7.
//  Copyright © 2016年 初见寻常. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSError *error;
        NSString *str = [[NSString alloc]
                         initWithContentsOfFile:@"/etc/resolv.conf"
                         encoding:NSASCIIStringEncoding
                         error:&error];
        
        if (!str) {
            NSLog(@"read failed: %@", [error localizedDescription]);
        } else {
            NSLog(@"resolv.conf looks like this: %@", str);
        }
        
    }
    return 0;
}
