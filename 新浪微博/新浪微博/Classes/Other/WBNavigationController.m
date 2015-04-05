//
//  WBNavigationController.m
//  新浪微博
//
//  Created by TOM on 15/4/5.
//  Copyright (c) 2015年 C.C.R. All rights reserved.
//

#import "WBNavigationController.h"

@interface WBNavigationController() {

}

@end

@implementation WBNavigationController

-(void)viewDidLoad{

    [super viewDidLoad];
    
    UINavigationBar *bar=[UINavigationBar appearance];
    [bar setBackgroundImage:[UIImage imageNamed:@"navigationbar_background.png"] forBarMetrics:UIBarMetricsDefault];
    
    [bar setTitleTextAttributes:@{UITextAttributeTextColor:[UIColor blackColor],UITextAttributeTextShadowOffset:[NSValue valueWithUIOffset:UIOffsetZero]}];
    //4。修改所有UIButtonItem的外观
    UIBarButtonItem *barItem=[UIBarButtonItem appearance];
    
    [barItem setBackButtonBackgroundImage:[UIImage imageNamed:@"navigationbar_button_background.png"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [barItem setBackButtonBackgroundImage:[UIImage imageNamed:@"navigationbar_button_background_pushed.png"] forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
    
    //修改Item上的文字
    NSDictionary *dic=@{
                        UITextAttributeTextColor:[UIColor darkGrayColor],
                        UITextAttributeTextShadowOffset:[NSValue valueWithUIOffset:UIOffsetZero]};
    
    [barItem setTitleTextAttributes:dic forState:UIControlStateNormal];
    [barItem setTitleTextAttributes:dic forState:UIControlStateHighlighted];
    
    [UIApplication sharedApplication].statusBarStyle=UIStatusBarStyleBlackOpaque;
}


@end






















