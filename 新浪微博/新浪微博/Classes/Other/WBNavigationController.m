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
    //appearence返回一个导航栏的外观对象
    
    // 修改这个外观对象相当于修改了整个项目中的项目中外观
    UINavigationBar *bar=[UINavigationBar appearance];
    //设置导航栏的背景图片
//    [bar setBackgroundImage:[UIImage imageNamed:@"navigationbar_background.png"] forBarMetrics:UIBarMetricsDefault];
    //设置导航栏的文字主题
    [bar setTitleTextAttributes:@{UITextAttributeTextColor:[UIColor blackColor],UITextAttributeTextShadowOffset:[NSValue valueWithUIOffset:UIOffsetZero]}];
    //修改所有UIButtonItem的外观
    UIBarButtonItem *barItem=[UIBarButtonItem appearance];
    //修改item的背景图片
    [barItem setBackButtonBackgroundImage:[UIImage imageNamed:@"navigationbar_button_background.png"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [barItem setBackButtonBackgroundImage:[UIImage imageNamed:@"navigationbar_button_background_pushed.png"] forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
    
    //修改Item上的文字
    NSDictionary *dic=@{
                        UITextAttributeTextColor:[UIColor orangeColor],
                        UITextAttributeTextShadowOffset:[NSValue valueWithUIOffset:UIOffsetZero]};
    
    [barItem setTitleTextAttributes:dic forState:UIControlStateNormal];
    [barItem setTitleTextAttributes:dic forState:UIControlStateHighlighted];
    
    [UIApplication sharedApplication].statusBarStyle=UIStatusBarStyleBlackOpaque;
}


@end






















