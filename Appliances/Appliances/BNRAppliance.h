//
//  BNRAppliance.h
//  Appliances
//
//  Created by 初见寻常 on 16/6/10.
//  Copyright © 2016年 初见寻常. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRAppliance : NSObject

@property (nonatomic, copy) NSString *productName;
@property (nonatomic) int voltage;

- (instancetype)initWithProductName:(NSString *)pn;

@end
