//
//  StartAnimationView.h
//  MoneyManager
//
//  Created by HeroKingsley on 7/20/14.
//  Copyright (c) 2014 王智锐. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StartAnimationView : UIView


@property(nonatomic,strong)UIImageView *moneyImage;
@property(nonatomic,strong)UIImageView *managerImage;
@property(nonatomic,strong)UILabel *label;

-(void)animate;

@end
