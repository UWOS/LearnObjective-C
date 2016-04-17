//
//  BNREmployee.m
//  BMITime
//
//  Created by 初见寻常 on 16/4/17.
//  Copyright © 2016年 初见寻常. All rights reserved.
//

#import "BNREmployee.h"

@implementation BNREmployee

- (double) yearsOfEmployment
{
    // 是否拥有一个非nil的hireDate?
    if (self.hireDate) {
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / 31557600.0;   //每年的秒数
    }
    else {
        return 0;
    }
}

- (float) bodyMassIndex
{
    //return 19.0;
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

- (NSString *) description
{
    return [NSString stringWithFormat:@"<Employee %d>", self.employeeID];
}

@end
