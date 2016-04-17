//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by 初见寻常 on 16/4/17.
//  Copyright © 2016年 初见寻常. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

- (float) costInDollars
{
    float costInLocal = [super costInDollars];
    return costInLocal * _convertsionRate;
}

- (float) valueInDollars
{
    float valueInLocal = [super valueInDollars];
    return valueInLocal * _convertsionRate;
}

@end
