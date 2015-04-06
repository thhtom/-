//
//  Dock.h
//  新浪微博
//
//  Created by TOM on 15/4/5.
//  Copyright (c) 2015年 C.C.R. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Dock;

@protocol DockDelegate <NSObject>
@optional

-(void)dock:(Dock*)dock itemSelectedFrom:(int)from to:(int)to;

@end

@interface Dock : UIView
//添加一个选项卡
-(void)addItemWithIcon:(NSString *)icon selectedIcon:(NSString*)selected title:(NSString*)title;
//代理
@property(nonatomic ,weak)id <DockDelegate>delegate;

@end
