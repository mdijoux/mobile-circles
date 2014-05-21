//
//  CircleView.h
//  Circles
//
//  Created by Marc DIJOUX on 21/05/2014.
//  Copyright (c) 2014 Marc Dijoux. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CircleView : UIView

@property (nonatomic) int circles_nb;
@property (nonatomic) float line_width;

- (void)setCirclesNb:(int)circles_nb withLineWidth:(float)line_width;

@end
