//
//  RegisterView.h
//  MoneyManager
//
//  Created by HeroKingsley on 5/1/14.
//  Copyright (c) 2014 王智锐. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RegisterCallBack <NSObject>

@required

-(void)registerCall;

@end

@interface RegisterView : UIView

@property (nonatomic,strong)id delegate;
@property (nonatomic,strong)UITextField *emailField;
@property (nonatomic,strong)UITextField *unameTextField;
@property (nonatomic,strong)UITextField *pwdTextField;
@property (nonatomic,strong)UITextField *cpwdTextField;
@property (nonatomic,strong)UIButton *registerBtn;


-(void)registerCall;
-(void)setDelegate:(id)delegate;
@end
