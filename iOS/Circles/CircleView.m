//
//  CircleView.m
//  Circles
//
//  Created by Marc DIJOUX on 21/05/2014.
//  Copyright (c) 2014 Marc Dijoux. All rights reserved.
//

#import "CircleView.h"

@implementation CircleView

@synthesize circles_nb;
@synthesize line_width;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor clearColor]];
        self.circles_nb = 20;
        self.line_width = 5;
    }
    return self;
}

- (void)setCirclesNb:(int)circles_nb withLineWidth:(float)line_width{
    [self setCircles_nb:circles_nb];
    [self setLine_width:line_width];
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, line_width);
    [[UIColor grayColor] setStroke];
    int w = rect.size.width;
    int h = rect.size.height;
    
    srandom(time(NULL));
    for (int i = 1; i <= circles_nb; i++) {
        CGContextAddArc(context, random()%w, random()%h, i*15, 0, 2*M_PI, YES);
        CGContextStrokePath(context);
    }
}

@end
