//
//  NewFeatureViewController.m
//  新浪微博
//
//  Created by TOM on 15/4/4.
//  Copyright (c) 2015年 C.C.R. All rights reserved.
//

#import "NewFeatureViewController.h"

@interface NewFeatureViewController ()

@end

@implementation NewFeatureViewController

-(void)loadView{

    UIImageView *imageView=[[UIImageView alloc]init];
    imageView.image=[UIImage imageNamed:@""];
} 

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIScrollView *scrollView=[UIScrollView alloc ] ;
    self.view.backgroundColor=[UIColor blueColor];
    // Do any additional setup after loading the view.
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
