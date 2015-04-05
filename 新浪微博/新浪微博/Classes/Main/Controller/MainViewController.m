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
#import "DockController.h"
#import "Dock.h"

#define kDockHeight 44

@interface MainViewController ()<DockDelegate>

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addAllChildControllers];
    [self addDockItems];
    
    //    self.view.backgroundColor=[UIColor redColor];
    // Do any additional setup after loading the view.
}

-(void)addAllChildControllers{
    
    HomeController *home=[[HomeController alloc]init];
    WBNavigationController *nav1=[[WBNavigationController alloc]initWithRootViewController:home];
    [self addChildViewController:nav1];
    
    MessageController *mesage=[[MessageController alloc]init];
    WBNavigationController *nav2=[[WBNavigationController alloc]initWithRootViewController:mesage];
    [self addChildViewController:nav2];
    
    MeController *me=[[MeController alloc]init];
    WBNavigationController *nav3=[[WBNavigationController alloc]initWithRootViewController:me];
    [self addChildViewController:nav3];
    
    SquareController *square=[[SquareController alloc]init];
    WBNavigationController *nav4=[[WBNavigationController alloc]initWithRootViewController:square];
    [self addChildViewController:nav4];
    
    MoreController *more=[[MoreController alloc]init];
    WBNavigationController *nav5=[[WBNavigationController alloc]initWithRootViewController:more];
    [self addChildViewController:nav5];
    

}
-(void)addDockItems{
    

  
}


@end




























