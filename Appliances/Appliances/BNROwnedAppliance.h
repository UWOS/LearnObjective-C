//
//  BNROwnedAppliance.h
//  Appliances
//
//  Created by 初见寻常 on 16/6/10.
//  Copyright © 2016年 初见寻常. All rights reserved.
//

#import "BNRAppliance.h"

@interface BNROwnedAppliance : BNRAppliance

@property (readonly) NSSet *ownerNames;

// 指定初始化方法
- (instancetype)initWithProductName:(NSString *)pn
                     firstOwnerName:(NSString *)n;
- (void)addOwnerName:(NSString *)n;
- (void)removeOwnerName:(NSString *)n;

@end
