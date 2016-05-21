//
//  main.m
//  Callbacks
//
//  Created by 初见寻常 on 16/5/7.
//  Copyright © 2016年 初见寻常. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRLogger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BNRLogger *logger = [[BNRLogger alloc] init];
        
        /*[[NSNotificationCenter defaultCenter]
         addObserver:logger
         selector:@selector(zoneChange:)
         name:NSSystemTimeZoneDidChangeNotification
         object:nil];   ex 28.2 */
        
        // ex 28.2 ...
        [[NSNotificationCenter defaultCenter]
         addObserverForName:nil
         object: nil
         queue: nil
         usingBlock:
         ^(NSNotification *note) {
             NSLog(@"The system time zone has changed!");
         }];
        // ... ex 28.2
        
        NSURL *url = [NSURL URLWithString:@"https://developer.apple.com/library/ios/navigation/#section=Resource%20Types&topic=Reference"];
        
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        
        __unused NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest:request
                                                                              delegate:logger
                                                                      startImmediately:YES];
        
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                                          target:logger
                                                      selector:@selector(updateLastTime:)
                                                        userInfo:nil
                                                         repeats:YES];
        [[NSRunLoop currentRunLoop] run];
        
    }
    return 0;
}
