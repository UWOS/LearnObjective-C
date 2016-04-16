//
//  BNRStockHolding.h
//  Stocks
//
//  Created by 初见寻常 on 16/4/16.
//  Copyright © 2016年 初见寻常. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

{
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

- (float) purchaseSharePrice;
- (void) setPurchaseSharePrice:(float) psp;
- (float) currentSharePrice;
- (void) setCurrentSharePrice:(float) csp;
- (int) numberOfShare;
- (void) setNumberOfShare:(int) nos;

- (float) costInDollars;
- (float) valueInDollars;

@end
