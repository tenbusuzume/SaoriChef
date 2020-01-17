//
//  MainView.m
//  SaoriChef
//

#import "MainView.h"

@implementation MainView

- (void)_init
{
    // initialize
}
- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self _init];
    }
    return self;
}
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self _init];
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
}

+ (instancetype)mainView
{
    // xib ファイルから MyView のインスタンスを得る
    UINib *nib = [UINib nibWithNibName:@"MainView" bundle:nil];
    MainView *view = [nib instantiateWithOwner:self options:nil][0];
    return view;
}

#pragma mark - TextField Delegate
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    NSLog(@"aaaaaaaaaaa");
}
@end
