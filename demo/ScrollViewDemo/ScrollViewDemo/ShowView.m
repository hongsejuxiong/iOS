//
//  ShowView.m
//  ScrollViewDemo
//
//  Created by xie on 17/2/25.
//  Copyright © 2017年 drt. All rights reserved.
//

#import "ShowView.h"
#import <QuartzCore/QuartzCore.h>
#define PI 3.14159265358979323846


@implementation ShowView


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}


// 覆盖drawRect方法，你可以在此自定义绘画和动画
- (void)drawRect:(CGRect)rect
{

    
    CGContextRef context = UIGraphicsGetCurrentContext();
  
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
