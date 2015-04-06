//
//  UIBarButtonItem+Thh.m
//  新浪微博
//
//  Created by TOM on 15/4/5.
//  Copyright (c) 2015年 C.C.R. All rights reserved.
//

#import "UIBarButtonItem+Thh.h"

@implementation UIBarButtonItem (Thh)
-(id)initWithWithIcon:(NSString *)icon highlightedIcon:(NSString *)highlighted target:(id)target action:(SEL)action{
    //设置按钮
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    //设置普通图片
    UIImage *image=[UIImage imageNamed:icon];
    [btn setBackgroundImage:image forState:UIControlStateNormal];
    //设置高亮图片
    [btn setBackgroundImage:[UIImage imageNamed:highlighted] forState:UIControlStateHighlighted];
    //设置尺寸
    btn.bounds=(CGRect){CGPointZero,image.size};
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [self initWithCustomView:btn];
}

+(id)itemWithWithIcon:(NSString *)icon highlightedIcon:(NSString *)highlighted target:(id)target action:(SEL)action{

    return [[self alloc]initWithWithIcon:icon highlightedIcon:highlighted target:target action:action];
}

@end
