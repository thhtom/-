//
//  Dock.m
//  新浪微博
//
//  Created by TOM on 15/4/5.
//  Copyright (c) 2015年 C.C.R. All rights reserved.
//

#import "Dock.h"
#import "DockItem.h"
#import "DockController.h"

@interface Dock (){

    DockItem *_seletedItem;
}

@end

@implementation Dock
-(void)addItemWithIcon:(NSString *)icon selectedIcon:(NSString *)selected title:(NSString *)title{
    //创建item
    DockItem *item=[[DockItem alloc]init];
    //文字
    [item setTitle:title forState:UIControlStateNormal];
    //图标
    [item setImage:[UIImage imageNamed:icon] forState:UIControlStateNormal];
    [item setImage:[UIImage imageNamed:selected] forState:UIControlStateSelected];
    //监听item的惦记
    [item addTarget:self action:@selector(itemClick:) forControlEvents:UIControlEventTouchDown];
    //添加item
    [self addSubview:item];
    int count=self.subviews.count;
    //默认选中第一个item
    if (count==1) {
        [self itemClick:item];
    }
    //调整所有item的frame
    CGFloat height=self.frame.size.height;
    CGFloat width=self.frame.size.width/count;
    for (int i=0; i<count; i++) {
        DockItem *dockItem=self.subviews[i];
        dockItem.tag=i;
        dockItem.frame=CGRectMake(width*i, 0, width, height);
    
    }
    

}

-(void)itemClick:(DockItem*)item{
    //通知代理
    if ([_delegate respondsToSelector:@selector(dock:itemSelectedFrom:to:)]) {
        [_delegate dock:self itemSelectedFrom:_seletedItem.tag to:item.tag];
        
    }
    //取消选中当前的item
    _seletedItem.selected=NO;
    //选中点击的item
    item.selected=YES;
    //赋值
    _seletedItem=item;
}
@end











































