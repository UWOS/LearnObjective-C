//
//  main.m
//  Constants
//
//  Created by 初见寻常 on 16/5/2.
//  Copyright © 2016年 初见寻常. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"\u03c0 is %f", M_PI);
        NSLog(@"%d is larger.", MAX(10, 12));
        
        NSLocale *here = [NSLocale currentLocale];
        //NSString *currency = [here objectForKey:@"currency"];
        NSString *currency = [here objectForKey:NSLocaleCurrencyCode];
        NSLog(@"Money is %@", currency);
        
    }
    return 0;
}
