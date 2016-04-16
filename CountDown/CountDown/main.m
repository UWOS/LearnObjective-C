//
//  main.m
//  CountDown
//
//  Created by 初见寻常 on 16/4/9.
//  Copyright © 2016年 初见寻常. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *nsIn = [[NSString alloc] init];
        
        NSLog(@"Where should I start counting?");
        nsIn = [NSString stringWithUTF8String:"42"/*readline(NULL)*/];
        
        for(int n = nsIn.intValue; n >= 0; n-=3) {
            NSLog(@"%d\n", n);
            if (n % 5 == 0) {
                NSLog(@"Found one!\n");
            }
        }
        
    }
    return 0;
}
