//
//  CircleScrollView.h
//  Circles
//
//  Created by Marc DIJOUX on 21/05/2014.
//  Copyright (c) 2014 Marc Dijoux. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CircleView.h"

@interface CircleScrollView : UIScrollView <UIScrollViewDelegate>

@property (strong, nonatomic) CircleView *circleView;

- (void)setCirclesNb:(int)circles_nb withLineWidth:(float)line_width;

@end
