//
//  main.m
//  Stocks
//
//  Created by 初见寻常 on 16/4/16.
//  Copyright © 2016年 初见寻常. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "BNRStockHolding.h"
#import "BNRForeignStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRStockHolding *stock1 = [[BNRStockHolding alloc] init];
        BNRStockHolding *stock2 = [[BNRStockHolding alloc] init];
        //BNRStockHolding *stock3 = [[BNRStockHolding alloc] init];
        
        BNRForeignStockHolding *foreignStock = [[BNRForeignStockHolding alloc] init];
        
        NSMutableArray *stockarray = [[NSMutableArray alloc] init];
        
        int n = 0;
        
        [stock1 setPurchaseSharePrice:2.30];
        [stock1 setCurrentSharePrice:4.50];
        [stock1 setNumberOfShare:40];
        
        [stock2 setPurchaseSharePrice:12.19];
        [stock2 setCurrentSharePrice:10.56];
        [stock2 setNumberOfShare:90];
        
        [foreignStock setPurchaseSharePrice:45.10];
        [foreignStock setCurrentSharePrice:49.51];
        [foreignStock setNumberOfShare:210];
        foreignStock.convertsionRate = 0.94;
        
        [stockarray addObject:stock1];
        [stockarray addObject:stock2];
        [stockarray addObject:foreignStock];
        
        for (BNRStockHolding *sh in stockarray) {
            NSLog(@"stock%d PSP: %.2f,CSP: %.2f,NOS: %d,C: %.2f,V: %.2f.",
                  ++n, [sh purchaseSharePrice], [sh currentSharePrice], [sh numberOfShare],
                  [sh costInDollars], [sh valueInDollars]);
        }
        
    }
    return 0;
}
