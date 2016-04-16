//
//  main.m
//  TimeTwo
//
//  Created by 初见寻常 on 16/4/9.
//  Copyright © 2016年 初见寻常. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *currentTime = [NSDate date];
        NSLog(@"currentTime's value is %p", currentTime);
        
        NSDate *startTime = currentTime;
        
        sleep(2);
        
        currentTime = [NSDate date];
        NSLog(@"currentTime's value is now %p", currentTime);
        NSLog(@"The address of the original object is %p", startTime);
    }
    return 0;
}
