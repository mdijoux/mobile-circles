//
//  CircleScrollView.m
//  Circles
//
//  Created by Marc DIJOUX on 21/05/2014.
//  Copyright (c) 2014 Marc Dijoux. All rights reserved.
//

#import "CircleScrollView.h"

@implementation CircleScrollView

@synthesize circleView;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        NSLog(@"On init");
        CGRect square = CGRectMake(0, 0, 500, 1000);
        self.circleView = [[CircleView alloc]initWithFrame:square];
        [self addSubview:self.circleView];
		[self setContentSize:[self.circleView bounds].size];
        [self setDelegate:self];
		[self setMaximumZoomScale:20];
		[self setMinimumZoomScale:0.2];
    }
    return self;
}


-(UIView*)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.circleView;
}

- (void)setCirclesNb:(int)circles_nb withLineWidth:(float)line_width{
    [self.circleView setCirclesNb:circles_nb withLineWidth:line_width];
}

@end
