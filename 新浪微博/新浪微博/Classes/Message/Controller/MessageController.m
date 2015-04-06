//
//  MessageController.m
//  新浪微博
//
//  Created by TOM on 15/4/5.
//  Copyright (c) 2015年 C.C.R. All rights reserved.
//

#import "MessageController.h"

@implementation MessageController
-(void)viewDidLoad{

    [super viewDidLoad];
    //self.navigationItem.title=@"消息";
    self.title=@"信息";

    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc] initWithTitle:@"发私信" style:     UIBarButtonItemStyleBordered target:nil action:nil];
    self.view.backgroundColor=[UIColor greenColor];
}

@end
