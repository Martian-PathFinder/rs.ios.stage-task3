#import "DateHelper.h"

@implementation DateHelper

#pragma mark - First

-(NSString *)monthNameBy:(NSUInteger)monthNumber {
    NSArray *array = @[@"January", @"February", @"March", @"April", @"May", @"June", @"July", @"August", @"September", @"October", @"November", @"December"];
    
    if (monthNumber < 1 || monthNumber > 12) return nil;
    return array[monthNumber - 1];
}

#pragma mark - Second

- (long)dayFromDate:(NSString *)date {
    NSDateFormatter *formatter = [NSDateFormatter new];
    formatter.dateFormat = @"yyyy-MM-dd'T'HH:mm:ss'Z'";
    NSDate *myDate = [formatter dateFromString:date];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSInteger day = [calendar component:NSCalendarUnitDay fromDate: myDate];
    return day;
}

#pragma mark - Third

- (NSString *)getDayName:(NSDate*) date {
    NSArray *dateWeek = @[@"Пн", @"Вт", @"Ср", @"Чт", @"Пт", @"Сб", @"Вс"];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"EEEE"];
    
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *comps = [gregorian components: NSCalendarUnitWeekday fromDate: date];
    NSInteger weekday = [comps weekday];
    
    if (weekday < 1 || weekday > 7) return nil;
    
    return dateWeek[weekday - 2];
}

#pragma mark - Fourth

- (BOOL)isDateInThisWeek:(NSDate *)date {
    NSCalendar *calendar= [NSCalendar currentCalendar];
    NSInteger curWeek = [calendar component: NSCalendarUnitWeekOfMonth fromDate: [NSDate now]];
    NSInteger myWeek = [calendar component: NSCalendarUnitWeekOfMonth fromDate: date];
    if (curWeek == myWeek) {
        return YES;
    } else {
        return NO;
    }
}

@end
