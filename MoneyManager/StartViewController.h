//
//  StartViewController.h
//  MoneyManager
//
//  Created by HeroKingsley on 5/1/14.
//  Copyright (c) 2014 王智锐. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginView.h"
#import "RegisterView.h"
#import "StartAnimationView.h"

@interface StartViewController : UIViewController

@property (strong,nonatomic)LoginView* loginView;
@property (strong,nonatomic)RegisterView* registerView;
@property (strong,nonatomic)StartAnimationView *animationView;

-(void)switchTheState;


@end
