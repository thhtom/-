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

    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    
    UIImage *image=[UIImage imageNamed:icon];
    
    [btn setBackgroundImage:image forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:highlighted] forState:UIControlStateHighlighted];
    btn.bounds=(CGRect){CGPointZero,image.size};
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [self initWithCustomView:btn];
}

+(id)initWithWithIcon:(NSString *)icon highlightedIcon:(NSString *)highlighted target:(id)target action:(SEL)action{

    return [[self alloc]initWithWithIcon:icon highlightedIcon:highlighted target:target action:action];
}

@end
