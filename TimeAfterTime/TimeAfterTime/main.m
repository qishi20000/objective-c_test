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
        
        NSDate *later = [now dateByAddingTimeInterval:1000000];
        NSLog(@"In 100000 seconds it will be %@.",later);
        
        NSCalendar* cal = [NSCalendar currentCalendar];
        NSLog(@"My calendar is %@",[cal calendarIdentifier]);

        unsigned long day = [cal ordinalityOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitMonth forDate:now];
        
        NSLog(@"This is day %lu of the mouth",day);
        
        NSHost* host = [NSHost currentHost];
        NSString* computer = [host localizedName];
        NSLog(@"My Computer Name: %@",computer);
    }
    return 0;
}
