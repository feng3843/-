//
//  NSString+date.m
//  212123
//
//  Created by ivy.sun on 16/3/23.
//  Copyright © 2016年 zxh. All rights reserved.
//

#import "NSString+date.h"

@implementation NSString (date)

- (BOOL)isDeprecated{
    //把字符串转为NSdate
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
    NSDate *timeDate = [dateFormatter dateFromString:self];
    if (timeDate == nil) return YES;
    //得到与当前时间差
    NSTimeInterval  timeInterval = [timeDate timeIntervalSinceNow];
    timeInterval = -timeInterval;

    if (timeInterval > 60 * 60 * 24 * 30){
        return YES;
    }else{
        return NO;
    }
}


- (NSString *) daysformCurrentTime
{
    //把字符串转为NSdate
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
    NSDate *timeDate = [dateFormatter dateFromString:self];
    
    //得到与当前时间差
    NSTimeInterval  timeInterval = [timeDate timeIntervalSinceNow];
    timeInterval = -timeInterval;
    
    int days = timeInterval / 24 / 60 / 60 ;
    return [NSString stringWithFormat:@"%d",days];
}


- (NSString *) compareWithCurrentTime
{
    
    //把字符串转为NSdate
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
    NSDate *timeDate = [dateFormatter dateFromString:self];

    //得到与当前时间差
    NSTimeInterval  timeInterval = [timeDate timeIntervalSinceNow];
    timeInterval = -timeInterval;

    long temp = 0;
    NSString *result;
    if (timeInterval < 60) {
        result = [NSString stringWithFormat:@"刚刚"];
    }
    else if((temp = timeInterval/60) <60){
        result = [NSString stringWithFormat:@"%ld分钟前",temp];
    }
    
    else if((temp = temp/60) <24){
        result = [NSString stringWithFormat:@"%ld小时前",temp];
    }
    
    else if((temp = temp/24) <30){
        result = [NSString stringWithFormat:@"%ld天前",temp];
    }
    
    else if((temp = temp/30) <12){
        result = [NSString stringWithFormat:@"%ld月前",temp];
    }
    else{
        temp = temp/12;
        result = [NSString stringWithFormat:@"%ld年前",temp];
    }
    
    return  result;
}

- (NSString *) compareWorkHistoryWithCurrentTime
{
    
    //把字符串转为NSdate
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    NSDate *timeDate = [dateFormatter dateFromString:self];
    if(!timeDate){
        return @"无工作经验";
    }
        
    //得到与当前时间差
    NSTimeInterval  timeInterval = [timeDate timeIntervalSinceNow];
    timeInterval = -timeInterval;

    long temp = 0;
    NSString *result;
    if((temp = timeInterval/60/60/24/30) <12){
        result = [NSString stringWithFormat:@"%ld个月工作经验",temp];
    }
    else{
        float years = temp/12.0;
        long year = temp/12;
        if (year == years){
            result = [NSString stringWithFormat:@"%ld年工作经验",year];
        }else{
            result = [NSString stringWithFormat:@"%.1f年工作经验",years];
        }
    }
    
    return  result;
}
@end
