//
//  main.m
//  DateList
//
//  Created by 初见寻常 on 16/4/10.
//  Copyright © 2016年 初见寻常. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0*60.0*60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0*60.0*60.0];
        
        //NSArray *dateList = @[now, tomorrow, yesterday];
        
        NSMutableArray *dateList = [NSMutableArray array];
        
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        
        [dateList insertObject:yesterday atIndex:0];
        
        //NSLog(@"The first date is %@", dateList[0]);
        //NSLog(@"The third date is %@", dateList[2]);
        
        //NSLog(@"There are %lu dates", [dateList count]);
        
        //NSUInteger dateCount = [dateList count];
        //for (int i = 0; i < dateCount; i++) {
        //    NSDate *d = dateList[i];
        for (NSDate *d in dateList) {   // fast enumeration.
            NSLog(@"Here is a date: %@", d);
        }
        
        [dateList removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@", dateList[0]);
    }
    return 0;
}
