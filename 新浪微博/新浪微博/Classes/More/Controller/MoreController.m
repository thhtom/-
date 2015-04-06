//
//  MoreController.m
//  新浪微博
//
//  Created by TOM on 15/4/5.
//  Copyright (c) 2015年 C.C.R. All rights reserved.
//

#import "MoreController.h"
#import "UIBarButtonItem+Thh.h"

@interface MoreController() {

    NSArray *_data;
}

@end

@implementation MoreController
-(void)viewDidLoad{

    [super viewDidLoad];
    //搭建UI界面
    [self buildUI];
    //读取plist文件内容
    [self loadPlist];
    //设置tableview属性
    [self buildTableView];
    
}
-(void)buildTableView{
    //这行代码在现在的ISOsdk中貌似已经不起作用了
    //优先级backgroundView>backgroundColor
    //self.tableView.backgroundView=nil;
    self.tableView.backgroundColor=[UIColor colorWithRed:235/255.0 green:235/255.0 blue:235/255.0 alpha:1];
    //24bit RGB red green blue  #ffffff 白色  #000000黑色
    //32bit ARGB

    
}
#pragma mark 搭建UI界面
-(void)buildUI{
    
    //设置标题
    self.title=@"更多";
    //设置右上角按钮
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithTitle:@"设置" style:UIBarButtonItemStyleBordered target:nil action:nil];
    //设置背景颜色
    //self.view.backgroundColor=[UIColor grayColor];

    
}
#pragma  mark 读取plist文件内容
-(void)loadPlist{
    //获取路径
    NSURL *url=[[NSBundle mainBundle]URLForResource:@"More" withExtension:@"plist"];
    //读取数据
    _data=[NSArray arrayWithContentsOfURL:url];
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{

    return _data.count;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
//    NSArray *array=_data[section];
//    return array.count;
    return [_data[section]count];
    
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *cellIndentifier=@"cell";
    //forIndexPath:indexPath是与Storyboard配套使用的
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIndentifier];
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIndentifier];
        
    }
    //取出这行对应的字典数据
    NSDictionary *dict=_data[indexPath.section][indexPath.row];
    //设置文字
    cell.textLabel.text=dict[@"name"];
    //设置cell背景图片
    UIImageView *bg1=[[UIImageView alloc]init];
    cell.backgroundView=bg1;
    UIImageView *bg2=[[UIImageView alloc]init];
    cell.selectedBackgroundView=bg2;
    
    //当前组的总行数
    int count=[_data[indexPath.section]count];
    if (count==1) {
        bg1.image=[UIImage imageNamed:@"common_card_background.png"];
        bg2.image=[UIImage imageNamed:@"common_card_background_highlighted.png"];
    }
    else if(indexPath.row==0){
    
        bg1.image=[UIImage imageNamed:@""];
        bg2.image=[UIImage imageNamed:@""];
    }else if(indexPath.row==count-1){
        bg1.image=[UIImage imageNamed:@""];
        bg2.image=[UIImage imageNamed:@""];
    }else{
        bg1.image=[UIImage imageNamed:@""];
        bg2.image=[UIImage imageNamed:@""];
    }

    return cell;
    
}

@end














