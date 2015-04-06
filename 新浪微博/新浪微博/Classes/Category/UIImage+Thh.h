//
//  UIImage+Thh.h
//  新浪微博
//
//  Created by TOM on 15/4/4.
//  Copyright (c) 2015年 C.C.R. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Thh)
#pragma mark 加载全屏的图片
+(UIImage*)fullscreenImage:(NSString*)imageName;
#pragma mark 图片自由拉伸，不改变图片的形状
+(UIImage*)resizedImage:(NSString*)imageName;


@end
