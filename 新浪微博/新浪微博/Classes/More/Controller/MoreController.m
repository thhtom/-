//
//  MoreController.m
//  新浪微博
//
//  Created by TOM on 15/4/5.
//  Copyright (c) 2015年 C.C.R. All rights reserved.
//

#import "MoreController.h"
#import "UIBarButtonItem+Thh.h"

@implementation MoreController
-(void)viewDidLoad{

    [super viewDidLoad];
    //设置标题
    self.title=@"更多";
    //设置右上角按钮
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithTitle:@"设置" style:UIBarButtonItemStyleBordered target:nil action:nil];
    //设置背景颜色
    self.view.backgroundColor=[UIColor grayColor];
}

@end
