//
//  HomeController.m
//  新浪微博
//
//  Created by TOM on 15/4/5.
//  Copyright (c) 2015年 C.C.R. All rights reserved.
//

#import "HomeController.h"
#import "UIBarButtonItem+Thh.h"

@implementation HomeController
-(void)viewDidLoad{

    [super viewDidLoad];
    //设置标题
    self.title=@"首页";
    //设置左上角按钮
    self.navigationItem.leftBarButtonItem=[UIBarButtonItem itemWithWithIcon:@"navigationbar_compose.png" highlightedIcon:@"navigationbar_compose_highlighted.png" target:self action:@selector(sendStatus)];
    //设置右边的item
    self.navigationItem.rightBarButtonItem=[UIBarButtonItem itemWithWithIcon:@"navigationbar_pop.png" highlightedIcon:@"navigationbar_pop_highlighted.png" target:self action:@selector(popMenu)];
    //设置背景颜色
    self.view.backgroundColor=[UIColor yellowColor];
}
-(void)sendStatus{
    
    

}
-(void)popMenu{

    
}


@end




