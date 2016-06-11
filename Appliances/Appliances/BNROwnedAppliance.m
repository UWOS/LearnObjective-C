//
//  BNROwnedAppliance.m
//  Appliances
//
//  Created by 初见寻常 on 16/6/10.
//  Copyright © 2016年 初见寻常. All rights reserved.
//

#import "BNROwnedAppliance.h"

@interface BNROwnedAppliance()
{
    NSMutableSet *_ownerNames;
}

@end

@implementation BNROwnedAppliance

- (instancetype)initWithProductName:(NSString *)pn firstOwnerName:(NSString *)n
{
    // 调用父类的初始化方法
    if (self = [super initWithProductName:pn]) {
        
        // 创建NSMutableSet实例，用于保存拥有者的姓名
        _ownerNames = [[NSMutableSet alloc] init];
        
        // 传入的第一个拥有者姓名是否为nil？
        if (n) {
            [_ownerNames addObject:n];
        }
    }
    
    // 返回指向新对象的指针
    return self;
}

- (void)addOwnerName:(NSString *)n
{
    [_ownerNames addObject:n];
}

- (void)removeOwnerName:(NSString *)n
{
    [_ownerNames removeObject:n];
}

- (NSSet *)ownerNames
{
    return [_ownerNames copy];
}

- (instancetype)initWithProductName:(NSString *)pn
{
    return [self initWithProductName:pn firstOwnerName:nil];
}

@end
