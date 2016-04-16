//
//  main.m
//  SearchWorda
//
//  Created by 初见寻常 on 16/4/10.
//  Copyright © 2016年 初见寻常. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *wordString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];
        NSString *spWordString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                           encoding:NSUTF8StringEncoding
                                                              error:NULL];
        
        NSArray *words = [wordString componentsSeparatedByString:@"\n"];
        NSArray *spWords = [spWordString componentsSeparatedByString:@"\n"];
        
        for (NSString *w in words) {
            if (w.length > 0 && [w characterAtIndex:0] >= 'a' && [w characterAtIndex:0] <= 'z') {
                for (NSString *sp in spWords) {
                    NSRange r = [sp rangeOfString:w options:NSCaseInsensitiveSearch];
                    
                    if (r.location == 0 && r.length == sp.length) {
                        NSLog(@"%@   %@", w, sp);
                    }
                }
            }
        }
    }
    return 0;
}
