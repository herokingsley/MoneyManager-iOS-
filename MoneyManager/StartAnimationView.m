//
//  StartAnimationView.m
//  MoneyManager
//
//  Created by HeroKingsley on 7/20/14.
//  Copyright (c) 2014 王智锐. All rights reserved.
//

#import "StartAnimationView.h"
@interface StartAnimationView(){
    
        float managersy;
        float moneysy;
}

@end


@implementation StartAnimationView
@synthesize managerImage = _managerImage;
@synthesize moneyImage   = _moneyImage;
@synthesize label    = _rightLabel;


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setBackgroundColor:[UIColor orangeColor]];
        UIImage* money = [UIImage imageNamed:@"money"];
        UIImage* manager = [UIImage imageNamed:@"manager.png"];
        NSLog(@"%@",money);
        NSLog(@"%@",manager);
        _managerImage = [[UIImageView alloc] initWithImage:manager];
        _moneyImage   = [[ UIImageView alloc] initWithImage:money];
        
        float screenwidth = frame.size.width;
        float width = 134;
        float moneysx = (screenwidth - width) / 2  ;
        float screenheight = frame.size.height / 2;
        float height  = 44;//money.size.height;
        moneysy = (screenheight - height) / 2 - height/2 ;
        _moneyImage.frame = CGRectMake(moneysx, -100, width, height);
        [self addSubview:_moneyImage];
        
        width = 171;//manager.size.width;
        height = 39;//manager.size.height;
        float managersx = (screenwidth - width) / 2;
        managersy = (screenheight - height) / 2 + height / 2;
        _managerImage.frame = CGRectMake(managersx, -100, width, height);
        [self addSubview:_managerImage];
        //_managerImage.contentMode = UIViewContentModeScaleToFill;
        //_moneyImage.contentMode   = UIViewContentModeScaleToFill;
        _moneyImage.alpha = 0;
        _managerImage.alpha = 0;
        NSLog(@"money location %f %f ,size: %f %f",_moneyImage.frame.origin.x,_moneyImage.frame.origin.y,_moneyImage.frame.size.width,_moneyImage.frame.size.height);
    }
    return self;
}

-(void)animate{
    [UIView animateWithDuration:1.0f animations:^(){
        
        _moneyImage.alpha = 1.0f;
        CGRect rect = _moneyImage.frame;
        rect.origin.y = moneysy;
        _moneyImage.frame = rect;
        
        
    } completion:^(BOOL finished){
        NSLog(@"money animation finish");
        NSLog(@"money location %f %f ,size: %f %f",_moneyImage.frame.origin.x,_moneyImage.frame.origin.y,_moneyImage.frame.size.width,_moneyImage.frame.size.height);
        
        [UIView animateWithDuration:1.0f animations:^(){
            
            _managerImage.alpha = 1.0f;
            CGRect rect = _managerImage.frame;
            rect.origin.y = managersy;
            _managerImage.frame = rect;
            
        } completion:^(BOOL finished){
            NSLog(@"manager animation finish");
            CGRect rect = _managerImage.frame;
            NSLog(@"manager location %f %f ,size: %f %f",rect.origin.x,
                  rect.origin.y,rect.size.width,rect.size.height);
        
        
        }];

    }];
    
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
