//
//  BNRAsset.m
//  BMITime
//
//  Created by 初见寻常 on 16/4/24.
//  Copyright © 2016年 初见寻常. All rights reserved.
//

#import "BNRAsset.h"
#import "BNREmployee.h"

@implementation BNRAsset

- (NSString *) description
{
    //return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
    // holder是否为非nil?
    if (self.holder) {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>",
                self.label, self.resaleValue, self.holder];
    } else{
        return [NSString stringWithFormat:@"<%@: $%d unassigned>",self.label, self.resaleValue];
    }
}

- (void) dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
