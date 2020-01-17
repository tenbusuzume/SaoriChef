//
//  MainViewController.m
//  SaoriChef
//
//  Created by さくら　さおり on 2019/12/28.
//  Copyright © 2019 やまぐち　さおり. All rights reserved.
//

#import "MainViewController.h"
#import "MainView.h"

@interface MainViewController ()

@property (nonatomic) MainView *mainView;
@end

@implementation MainViewController

- (void)loadView
{
    self.mainView = [MainView mainView];
    [self setView:self.mainView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

@end
