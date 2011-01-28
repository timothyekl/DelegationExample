//
//  ColorView.m
//  DelegationExample
//
//  Created by Tim Ekl on 1/27/11.
//  Copyright 2011 Tim Ekl. All rights reserved.
//

#import "ColorView.h"

@implementation ColorView

@synthesize color = _color;

// Default to a black color
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.color = [UIColor blackColor];
    }
    return self;
}

// Fill in the entire view with a black color
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextAddRect(context, self.bounds);
    
    CGContextSetFillColorWithColor(context, [self.color CGColor]);
    CGContextFillPath(context);
}


@end
