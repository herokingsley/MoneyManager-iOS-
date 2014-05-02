//
//  Login.m
//  MoneyManager
//
//  Created by HeroKingsley on 5/1/14.
//  Copyright (c) 2014 王智锐. All rights reserved.
//

#import "LoginView.h"

@implementation LoginView

@synthesize unameField = _unameField;
@synthesize pwdField   = _pwdField;
@synthesize bgImage    = _bgImage;
@synthesize loginBtn   = _loginBtn;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
