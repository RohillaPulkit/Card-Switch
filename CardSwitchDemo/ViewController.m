//
//  ViewController.m
//  CardSwitchDemo
//
//  Created by Pulkit Rohilla on 04/01/17.
//  Copyright © 2017 PulkitRohilla. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize viewCard1,viewCard2;

#pragma mark - UIViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)dealloc
{

}

#pragma mark - UIButton

- (IBAction)actionOverheadClicked:(id)sender {
    
    [self.view bringSubviewToFront:viewCard1];
    [self.card1TopConstraint setConstant:50.0f];
    [self.card2TopConstraint setConstant:5.0f];

    [UIView animateWithDuration:0.35f delay:0.0f options:UIViewAnimationOptionLayoutSubviews animations:^{
        
        [self.view layoutIfNeeded];
        [_btnCard2 setTitleColor:[UIColor colorWithRed:144.0/255.0 green:144.0/255.0 blue:144.0/255.0 alpha:1.0] forState:UIControlStateNormal];
        [_btnCard1 setTitleColor:[UIColor colorWithRed:180.0/255.0 green:0.0/255.0 blue:33.0/255.0 alpha:1.0] forState:UIControlStateNormal];

    } completion:nil];
    
}

- (IBAction)actionJobClicked:(id)sender {
    
    [self.view bringSubviewToFront:viewCard2];
    [self.card1TopConstraint setConstant:5.0f];
    [self.card2TopConstraint setConstant:50.0f];

    [UIView animateWithDuration:0.35f delay:0.0f options:UIViewAnimationOptionLayoutSubviews animations:^{

        [self.view layoutIfNeeded];
        [_btnCard2 setTitleColor:[UIColor colorWithRed:180.0/255.0 green:0.0/255.0 blue:33.0/255.0 alpha:1.0] forState:UIControlStateNormal];
        [_btnCard1 setTitleColor:[UIColor colorWithRed:144.0/255.0 green:144.0/255.0 blue:144.0/255.0 alpha:1.0] forState:UIControlStateNormal];

    } completion:nil];
}

@end
