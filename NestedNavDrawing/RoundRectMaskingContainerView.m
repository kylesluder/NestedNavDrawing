//
//  RoundRectMaskingContainerView.m
//  NestedNavDrawing
//
//  Created by Kyle Sluder on 8/11/14.
//  Copyright (c) 2014 The Omni Group. All rights reserved.
//

#import "RoundRectMaskingContainerView.h"

@interface RoundRectMaskView : UIView
@end

@implementation RoundRectMaskView

- (void)drawRect:(CGRect)rect;
{
    [[UIColor whiteColor] setFill];
    [[UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:8.0f] fill];
}

@end

@implementation RoundRectMaskingContainerView

- (void)awakeFromNib;
{
    UIView *maskView = [[RoundRectMaskView alloc] initWithFrame:self.bounds];
    maskView.opaque = NO;
    maskView.clearsContextBeforeDrawing = YES;
    self.maskView = maskView;
    
    [super awakeFromNib];
}

- (void)layoutSubviews;
{
    UIView *maskView = self.maskView;
    maskView.frame = self.bounds;
    [maskView setNeedsDisplay];
    [super layoutSubviews];
}

@end
