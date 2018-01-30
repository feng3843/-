//
//  NSString+date.h
//  212123
//
//  Created by ivy.sun on 16/3/23.
//  Copyright © 2016年 zxh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (date)

//比对日期字符串格式需要是：yyyy-MM-dd HH:mm:ss.SSS
- (NSString *) compareWithCurrentTime;

- (NSString *) daysformCurrentTime;

- (NSString *) compareWorkHistoryWithCurrentTime;

- (BOOL)isDeprecated;
@end
