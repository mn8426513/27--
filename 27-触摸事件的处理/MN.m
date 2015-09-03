//
//  MN.m
//  27-触摸事件的处理
//
//  Created by Mac on 14-10-11.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "MN.h"

@implementation MN

//-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
//
//
//
//
//}
//
//
//-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
//
//}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    
    // 当前触摸点
    CGPoint current = [touch locationInView:self];
    // 上一个触摸点
    CGPoint previous = [touch previousLocationInView:self];
    
    // 修改当前view的位置(中点)
    CGPoint center = self.center;
    center.x += current.x - previous.x;
    center.y += current.y - previous.y;
    self.center = center;
    
    
    
}
//-(void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
//
//
//
//
//}



@end
