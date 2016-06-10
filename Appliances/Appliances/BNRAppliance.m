//
//  BNRAppliance.m
//  Appliances
//
//  Created by 初见寻常 on 16/6/10.
//  Copyright © 2016年 初见寻常. All rights reserved.
//

#import "BNRAppliance.h"

@implementation BNRAppliance

- (instancetype)initWithProductName:(NSString *)pn
{
    // 调用NSObject的init方法
    self = [super init];
    
    // 是否返回非nil的值
    if (self) {
        // 为_productName赋值
        [self setProductName:pn];
        
        // 为_voltage赋初始值
        [self setVoltage:120];
    }
    
    // 返回指向新对象的指针
    return self;
}

- (instancetype)init
{
    return [self initWithProductName:@"Unknown"];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: %d volts>", self.productName, self.voltage];
}

@end
