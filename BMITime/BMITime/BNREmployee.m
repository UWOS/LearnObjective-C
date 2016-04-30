//
//  BNREmployee.m
//  BMITime
//
//  Created by 初见寻常 on 16/4/17.
//  Copyright © 2016年 初见寻常. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

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
    //return [NSString stringWithFormat:@"<Employee %d>", self.employeeID];
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>", self.employeeID, self.valueOfAssets];
}

- (void) dealloc
{
    NSLog(@"deallocating %@", self);
}

- (void) setAssets:(NSArray *) a
{
    _assets = [a mutableCopy];
}

- (NSArray *) assets
{
    return [_assets copy];
}

- (void) addAsset:(BNRAsset *)a
{
    // assets 是否为nil?
    if (!_assets) {
        // 创建数组
        _assets = [[NSMutableArray alloc] init];
    }
    
    [_assets addObject:a];
}

- (unsigned int) valueOfAssets
{
    //累加物品的转售价值
    unsigned int sum = 0;
    for (BNRAsset *a in _assets) {
        sum += [a resaleValue];
    }
    return sum;
}

// exce 21.2
- (void) removeAsset:(unsigned int)index
{
    if (_assets && index < [_assets count]) {
        [_assets removeObjectAtIndex:index];
    }
}

@end
