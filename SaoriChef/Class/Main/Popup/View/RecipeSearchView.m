//
//  RecipeSearchView.m
//  SaoriChef
//

#import "RecipeSearchView.h"

@implementation RecipeSearchView


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
    UINib *nib = [UINib nibWithNibName:@"RecipeSearchView" bundle:nil];
    RecipeSearchView *view = [nib instantiateWithOwner:self options:nil][0];
    return view;
}


@end
