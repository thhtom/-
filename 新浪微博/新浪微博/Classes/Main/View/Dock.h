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

-(void)addItemWithIcon:(NSString *)icon selectedIcon:(NSString*)selected title:(NSString*)title;

@property(nonatomic ,weak)id <DockDelegate>delegate;

@end
