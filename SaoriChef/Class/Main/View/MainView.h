//
//  MainView.h
//  SaoriChef
//
//  Created by さくら　さおり on 2019/12/28.
//  Copyright © 2019 やまぐち　さおり. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainView : UIView <UITextFieldDelegate>

@property (weak, nonatomic) UITextField *textRecipeSearch;

+ (instancetype)mainView;

@end
