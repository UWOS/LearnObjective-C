//
//  BNRStockHolding.m
//  Stocks
//
//  Created by 初见寻常 on 16/4/16.
//  Copyright © 2016年 初见寻常. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float) purchaseSharePrice
{
    return _purchaseSharePrice;
}

- (void) setPurchaseSharePrice:(float)psp
{
    _purchaseSharePrice = psp;
}

- (float) currentSharePrice
{
    return _currentSharePrice;
}

- (void) setCurrentSharePrice:(float)csp
{
    _currentSharePrice = csp;
}

- (int) numberOfShare
{
    return _numberOfShares;
}

- (void) setNumberOfShare:(int)nos
{
    _numberOfShares = nos;
}

- (float) costInDollars
{
    return [self purchaseSharePrice] * [self numberOfShare];
}

- (float) valueInDollars
{
    return [self currentSharePrice] * [self numberOfShare];
}

@end
