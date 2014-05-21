//
//  ViewController.m
//  Circles
//
//  Created by Marc DIJOUX on 21/05/2014.
//  Copyright (c) 2014 Marc Dijoux. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.cirlceScrollView init];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)updateCircles:(id)sender
{
    [self.view endEditing:YES];
    float line_width = [[self.line_width text] floatValue];
    int circles_nb = [[self.circles_nb text] intValue];
    [self.cirlceScrollView setCirclesNb:circles_nb withLineWidth:line_width];
}

- (IBAction)onTap:(id)sender
{
    [self.view endEditing:YES];
}

@end
