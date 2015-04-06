//
//  UIBarButtonItem+Thh.h
//  新浪微博
//
//  Created by TOM on 15/4/5.
//  Copyright (c) 2015年 C.C.R. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Thh)
-(id)initWithWithIcon:(NSString*)icon highlightedIcon:(NSString*)highlighted target:(id)target action:(SEL)action;
+(id)itemWithWithIcon:(NSString*)icon highlightedIcon:(NSString*)highlighted target:(id)target action:(SEL)action;


@end
