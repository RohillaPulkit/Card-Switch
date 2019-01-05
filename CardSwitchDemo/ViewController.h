//
//  ViewController.h
//  CardSwitchDemo
//
//  Created by Pulkit Rohilla on 04/01/17.
//  Copyright © 2017 PulkitRohilla. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UIView *viewCard1;
@property (weak, nonatomic) IBOutlet UIView *viewCard2;
- (IBAction)actionCard1Clicked:(id)sender;
- (IBAction)actionCard2Clicked:(id)sender;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *card1TopConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *card2TopConstraint;

@property (weak, nonatomic) IBOutlet UIButton *btnCard1;
@property (weak, nonatomic) IBOutlet UIButton *btnCard2;

@end


