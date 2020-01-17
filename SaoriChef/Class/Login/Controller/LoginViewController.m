//
//  LoginViewController.m
//  SaoriChef
//
//  Created by さくら　さおり on 2019/12/15.
//  Copyright © 2019 やまぐち　さおり. All rights reserved.
//

#import "LoginViewController.h"
#import "MainViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


#pragma mark - Button Action


- (IBAction)tappedBtnLogin:(UIButton *)button
{
    [self performSegueWithIdentifier:@"MainVC" sender:self];
}

@end
