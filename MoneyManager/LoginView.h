//
//  Login.h
//  MoneyManager
//
//  Created by HeroKingsley on 5/1/14.
//  Copyright (c) 2014 王智锐. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LoginCallBack <NSObject>

@required
-(void)loginCall;

@end

@interface LoginView : UIView

@property (strong,nonatomic)id delegate;
@property (strong,nonatomic)UITextField *unameField;
@property (strong,nonatomic)UITextField *pwdField;
@property (strong,nonatomic)UIImage *bgImage;
@property (strong,nonatomic)UIButton *loginBtn;

-(void)loginCall;
-(void)setDelegate:(id)delegate;


@end
