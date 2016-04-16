//
//  main.m
//  Groceries
//
//  Created by 初见寻常 on 16/4/10.
//  Copyright © 2016年 初见寻常. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *list = [NSMutableArray array];
        
        NSString *bread = @"Loaf of bread";
        NSString *milk = @"Container of milk";
        NSString *butter = @"Stick of butter";
        
        [list addObject:bread];
        [list addObject:milk];
        [list addObject:butter];
        
        for (NSString *s in list) {
            NSLog(@"%@", s);
        }
    }
    return 0;
}
