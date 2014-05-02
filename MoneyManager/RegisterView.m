//
//  RegisterView.m
//  MoneyManager
//
//  Created by HeroKingsley on 5/1/14.
//  Copyright (c) 2014 王智锐. All rights reserved.
//

#import "RegisterView.h"

@interface RegisterView(){
    UILabel *uname;
    UILabel *pwd;
    UILabel *email;
    UILabel *cpwd;
}

@end



@implementation RegisterView

@synthesize unameTextField = _unameTextField;
@synthesize emailField     = _emailField;
@synthesize pwdTextField   = _pwdTextField;
@synthesize cpwdTextField  = _cpwdTextField;
@synthesize registerBtn    = _registerBtn;
@synthesize delegate       = _delegate;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        uname  = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
        uname.text = @"用户名：";
        [self addSubview:uname];
        _unameTextField = [[UITextField alloc] initWithFrame:CGRectMake(200, 200, 300, 100)];
        [self addSubview:_unameTextField];
        email = [[UILabel alloc]initWithFrame:CGRectMake(100, 400, 100, 100)];
        email.text = @"电子邮件：";
        [self addSubview:email];
        _emailField = [[UITextField alloc]initWithFrame:CGRectMake(200, 400, 300, 100)];
        [self addSubview:_unameTextField];
        pwd = [[UILabel alloc]initWithFrame:CGRectMake(100, 500, 100, 100)];
        pwd.text = @"密码：";
        [self addSubview:pwd];
        _pwdTextField = [[UITextField alloc]initWithFrame:CGRectMake(200, 500, 300, 100)];
        [self addSubview:_pwdTextField];
        cpwd = [[UILabel alloc]initWithFrame:CGRectMake(100, 600, 100, 100)];
        cpwd.text = @"确认密码：";
        [self addSubview:cpwd];
        _cpwdTextField = [[UITextField alloc]initWithFrame:CGRectMake(200, 600, 300, 100)];
        [self addSubview:_cpwdTextField];
        
        _registerBtn = [[UIButton alloc]initWithFrame:CGRectMake(130, 800, 900, 100 )];
        [self addSubview:_registerBtn];
        [_registerBtn addTarget:self action:@selector(registerCall) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

-(void)setDelegate:(id)delegate{
    self.delegate = delegate;
}

-(void)registerCall{
    if([_delegate respondsToSelector:@selector(registerCall)]){
        //if respond to will ok
    }
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
