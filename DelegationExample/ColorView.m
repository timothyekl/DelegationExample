//
//  ColorView.m
//  DelegationExample
//
//  Created by Tim Ekl on 1/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ColorView.h"


@implementation ColorView

@synthesize color = _color;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.color = [UIColor blackColor];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextMoveToPoint(context, 0.0f, 0.0f);
    CGContextAddLineToPoint(context, self.bounds.size.width, 0.0f);
    CGContextAddLineToPoint(context, self.bounds.size.width, self.bounds.size.height);
    CGContextAddLineToPoint(context, 0.0f, self.bounds.size.height);
    CGContextClosePath(context);
    
    CGContextSetFillColorWithColor(context, [self.color CGColor]);
    CGContextFillPath(context);
}


- (void)dealloc
{
    [super dealloc];
}

@end
