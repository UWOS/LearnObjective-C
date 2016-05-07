//
//  BNRLogger.h
//  Callbacks
//
//  Created by 初见寻常 on 16/5/7.
//  Copyright © 2016年 初见寻常. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRLogger : NSObject

@property (nonatomic) NSDate *lastTime;

- (NSString *)lastTimeString;
- (void) updateLastTime:(NSTimer *)t;

@end
