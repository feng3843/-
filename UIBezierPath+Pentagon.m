//
//  UIBezierPath+Pentagon.m
//  RadarChart
//
//  Created by qiuyaoyao on 16/6/5.
//  Copyright © 2016年 runagain. All rights reserved.
//

#import "UIBezierPath+Pentagon.h"

@implementation UIBezierPath (Pentagon)
///根据中心点和长度生成一个等边三角形路径
+ (CGPathRef)drawPentagonWithCenter:(CGPoint)center Length:(double)length
{
    NSArray *lengths = [NSArray arrayWithObjects:@(length),@(length),@(length), nil];
    return [self drawPentagonWithCenter:center LengthArray:lengths];
}

///根据中心点和长度生成一个散发线图形
+ (CGPathRef)drawLineWithCenter:(CGPoint)center Length:(double)length
{
    NSArray *lengths = [NSArray arrayWithObjects:@(length),@(length),@(length), nil];
    NSArray *coordinates = [self converCoordinateFromLength:lengths Center:center];
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    for (int i = 0; i < [coordinates count]; i++) {
        CGPoint point = [[coordinates objectAtIndex:i] CGPointValue];
        [bezierPath moveToPoint:center];
        [bezierPath addLineToPoint:point];
    }
    [bezierPath closePath];
    
    return bezierPath.CGPath;
}

///根据中心点和三个距离长度生成三角形路径
+ (CGPathRef)drawPentagonWithCenter:(CGPoint)center LengthArray:(NSArray *)lengths
{
    NSArray *coordinates = [self converCoordinateFromLength:lengths Center:center];
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    for (int i = 0; i < [coordinates count]; i++) {
        CGPoint point = [[coordinates objectAtIndex:i] CGPointValue];
        if (i == 0) {
            [bezierPath moveToPoint:point];
        } else {
            [bezierPath addLineToPoint:point];
        }
    }
    [bezierPath closePath];
    return bezierPath.CGPath;
}

///根据距离长度数组和中心点坐标  生成三个顶点的坐标数组
+ (NSArray *)converCoordinateFromLength:(NSArray *)lengthArray Center:(CGPoint)center
{
    NSMutableArray *coordinateArray = [NSMutableArray array];
    for (int i = 0; i < [lengthArray count] ; i++) {
        double length = [[lengthArray objectAtIndex:i] doubleValue];
        CGPoint point = CGPointZero;
        if (i == 0) {
            point =  CGPointMake(center.x ,
                                 center.y - length);
        } else if (i == 1) {
            point = CGPointMake(center.x - length * sin(M_PI / 3.0),
                                center.y + length * cos(M_PI / 3.0));
        } else{
            point = CGPointMake(center.x + length * sin(M_PI / 3.0),
                                center.y + length * cos(M_PI / 3.0));
        }
        [coordinateArray addObject:[NSValue valueWithCGPoint:point]];
    }
    return coordinateArray;
}

@end
