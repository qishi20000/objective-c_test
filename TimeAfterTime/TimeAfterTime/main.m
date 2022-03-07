//
//  main.m
//  TimeAfterTime
//
//  Created by qishi20000 on 2022/3/5.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSLog(@"This NSDate object lives at %p",now);
        NSLog(@"The date is %@",now);
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1979.",seconds);
    }
    return 0;
}
