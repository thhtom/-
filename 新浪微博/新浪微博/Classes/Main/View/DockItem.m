//
//  DockItem.m
//  新浪微博
//
//  Created by TOM on 15/4/5.
//  Copyright (c) 2015年 C.C.R. All rights reserved.
//

#import "DockItem.h"

#define kDockItemSelectedBG @"tabbar_slider.png"

#define kTitleRatio 0.3

@implementation DockItem

-(id)initWithFrame:(CGRect)frame{

    self=[super initWithFrame:frame];
    if (self) {
        self.titleLabel.textAlignment=NSTextAlignmentCenter;
        self.titleLabel.font=[UIFont systemFontOfSize:12];
        self.imageView.contentMode=UIViewContentModeCenter;
        [self setBackgroundImage:[UIImage imageNamed:@"kDockItemSelectedBG"] forState:UIControlStateSelected];
    }
    return  self;
}

-(CGRect)imageRectForContentRect:(CGRect)contentRect{

    CGFloat imageX=0;
    CGFloat imageY=0;
    CGFloat imageWidth=contentRect.size.width;
    CGFloat imageHeight=contentRect.size.height*(1-kTitleRatio);
    return CGRectMake(imageX, imageY, imageWidth, imageHeight);
}

-(CGRect)titleRectForContentRect:(CGRect)contentRect{
    CGFloat titleX=0;
    CGFloat titleHeight=contentRect.size.height*kTitleRatio;
    CGFloat titleY=contentRect.size.height-titleHeight;
    CGFloat titleWidth=contentRect.size.width;
    return CGRectMake(titleX, titleY, titleWidth, titleHeight);
    
}

@end

















