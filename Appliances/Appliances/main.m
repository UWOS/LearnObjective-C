//
//  main.m
//  Appliances
//
//  Created by 初见寻常 on 16/6/10.
//  Copyright © 2016年 初见寻常. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRAppliance.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRAppliance *a = [[BNRAppliance alloc] init];
        NSLog(@"a is %@", a);
        [a setProductName:@"Washing Machine"];
        [a setVoltage:240];
        NSLog(@"a is %@", a);
    }
    return 0;
}
