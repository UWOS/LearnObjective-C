//
//  main.m
//  HostName
//
//  Created by 初见寻常 on 16/4/6.
//  Copyright © 2016年 初见寻常. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSHost *host = [NSHost currentHost];
        NSString *hostName = [host localizedName];
        
        NSLog(@"%@", hostName);
    }
    return 0;
}
