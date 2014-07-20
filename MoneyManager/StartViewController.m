//
//  StartViewController.m
//  MoneyManager
//
//  Created by HeroKingsley on 5/1/14.
//  Copyright (c) 2014 王智锐. All rights reserved.
//

#import "StartViewController.h"

@interface StartViewController ()

@end

@implementation StartViewController

@synthesize animationView = _animationView;
@synthesize registerView  = _registerView;
@synthesize loginView     = _loginView;

-(id)init{
    self = [super init];
    if(self){
        
        //创建开头动画。
        UIScreen* screen = [UIScreen mainScreen];
        float width = [screen applicationFrame].size.width;
        float height = [screen applicationFrame].size.height;
        //加上状态栏的高度
        height = height + 20;
        
        _animationView = [[StartAnimationView alloc] initWithFrame:CGRectMake(0, 0, width, height)];
        NSLog(@"width %f height %f",width,height);
        [self.view addSubview:_animationView];
        [_animationView animate];
        //检查是否登录，如果未登录则展示registerView和loginView，反之进行跳转。
        
        
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
