//
//  ViewController.h
//  Circles
//
//  Created by Marc DIJOUX on 21/05/2014.
//  Copyright (c) 2014 Marc Dijoux. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CircleScrollView.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *circles_nb;
@property (weak, nonatomic) IBOutlet UITextField *line_width;
@property (weak, nonatomic) IBOutlet CircleScrollView *cirlceScrollView;

- (IBAction)updateCircles:(id)sender;
- (IBAction)onTap:(id)sender;

@end
