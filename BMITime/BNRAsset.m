//
//  BNRAsset.m
//  BMITime
//
//  Created by 初见寻常 on 16/4/24.
//  Copyright © 2016年 初见寻常. All rights reserved.
//

#import "BNRAsset.h"

@implementation BNRAsset

- (NSString *) description
{
    return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
}

- (void) dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
