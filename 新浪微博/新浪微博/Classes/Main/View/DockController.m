//
//  DockController.m
//  新浪微博
//
//  Created by TOM on 15/4/5.
//  Copyright (c) 2015年 C.C.R. All rights reserved.
//

#import "DockController.h"
#import "Dock.h"

#define kDockHeight 44

@implementation DockController
-(void)viewDidLoad{

    [super viewDidLoad];
    //添加dock
    [self addDock];
    
    
}

-(void)addDock{
    
    Dock *dock=[[Dock alloc]init];
    dock.frame=CGRectMake(0, self.view.frame.size.height-kDockHeight, self.view.frame.size.width, kDockHeight);
    dock.delegate=self;
    [self.view addSubview:dock];
    
    _dock=dock;
    
}
-(void)dock:(Dock *)dock itemSelectedFrom:(int)from to:(int)to{

    if (to<0||to>=self.childViewControllers.count) return;
    //移除旧控制器的view
    UIViewController *oldVc=self.childViewControllers[from];
    [oldVc.view removeFromSuperview];
    //取出即将显示的控制器
    UIViewController *newVc=self.childViewControllers[to];
    CGFloat width=self.view.frame.size.width;
    CGFloat height=self.view.frame.size.height-kDockHeight;
    newVc.view.frame=CGRectMake(0, 20, width, height-20);
    //添加新控制器的view到maincontroller上
    [self.view addSubview:newVc.view];
    
}

@end









