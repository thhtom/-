//
//  MainViewController.m
//  新浪微博
//
//  Created by TOM on 15/4/4.
//  Copyright (c) 2015年 C.C.R. All rights reserved.
//

#import "MainViewController.h"
#import "WBNavigationController.h"
#import "HomeController.h"
#import "MessageController.h"
#import "MeController.h"
#import "SquareController.h"
#import "MoreController.h"
#import "Dock.h"

#define kDockHeight 44

@interface MainViewController ()<DockDelegate>

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //初始化所有的字控制器
    [self addAllChildControllers];
    //初始化DockItems
    [self addDockItems];
    
    self.view.backgroundColor=[UIColor whiteColor];
    // Do any additional setup after loading the view.
}

-(void)addAllChildControllers{
    //首页
    HomeController *home=[[HomeController alloc]init];
    WBNavigationController *nav1=[[WBNavigationController alloc]initWithRootViewController:home];
    //self在，添加的字控制器就在
    [self addChildViewController:nav1];
    //信息
    MessageController *mesage=[[MessageController alloc]init];
    WBNavigationController *nav2=[[WBNavigationController alloc]initWithRootViewController:mesage];
    [self addChildViewController:nav2];
    //我
    MeController *me=[[MeController alloc]init];
    WBNavigationController *nav3=[[WBNavigationController alloc]initWithRootViewController:me];
    [self addChildViewController:nav3];
    //广场
    SquareController *square=[[SquareController alloc]init];
    WBNavigationController *nav4=[[WBNavigationController alloc]initWithRootViewController:square];
    [self addChildViewController:nav4];
    //更多
    MoreController *more=[[MoreController alloc]init];
    WBNavigationController *nav5=[[WBNavigationController alloc]initWithRootViewController:more];
    [self addChildViewController:nav5];
    

}
-(void)addDockItems{
      //添加背景图片
      _dock.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"tabbar_background.png"]];
       //往dock里添加内容
       [_dock addItemWithIcon:@"tabbar_home.png" selectedIcon:@"tabbar_home_selected.png" title:@"首页"];
       [_dock addItemWithIcon:@"tabbar_message_center.png" selectedIcon:@"tabbar_message_center_selected.png" title:@"消息"];
       [_dock addItemWithIcon:@"tabbar_profile.png" selectedIcon:@"tabbar_profile_selected.png" title:@"我"];
       [_dock addItemWithIcon:@"tabbar_discover.png" selectedIcon:@"tabbar_discover_selected.png" title:@"广场"];
       [_dock addItemWithIcon:@"tabbar_more.png" selectedIcon:@"tabbar_more_selected.png" title:@"更多"];

  
}


@end




























