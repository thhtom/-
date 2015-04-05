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

    DockItem *item=[[DockItem alloc]init];
    
    [item setTitle:title forState:UIControlStateNormal];
    
    [item setImage:[UIImage imageNamed:icon] forState:UIControlStateNormal];
    [item setImage:[UIImage imageNamed:selected] forState:UIControlStateSelected];
    
    [item addTarget:self action:@selector(itemClick:) forControlEvents:UIControlEventTouchDown];
    
    [self addSubview:item];
    
    long count=self.subviews.count;
    
    if (count==1) {
        [self itemClick:item];
    }
    
    CGFloat height=self.frame.size.width;
    CGFloat width=self.frame.size.height/count;
    for (int i=0; i<count; i++) {
        DockItem *dockItem=self.subviews[i];
        dockItem.tag=i;
        dockItem.frame=CGRectMake(width*i, 0, width, height);
    
    }
    

}

-(void)itemClick:(DockItem*)item{
    if ([_delegate respondsToSelector:@selector(dock:itemSelectedFrom:to:)]) {
        [_delegate dock:self itemSelectedFrom:_seletedItem.tag to:item.tag];
        
    }

    _seletedItem.selected=NO;
    
    item.selected=YES;
    
    _seletedItem=item;
}
@end











































