//
//  UIImage+Thh.m
//  新浪微博
//
//  Created by TOM on 15/4/4.
//  Copyright (c) 2015年 C.C.R. All rights reserved.
//

#import "UIImage+Thh.h"
#import "NSString+Thh.h"

@implementation UIImage (Thh)
#pragma mark 加载全屏图片

//new_feature_1.png
+(UIImage*)fullscreenImage:(NSString *)imageName{
     //如果是iPhone5,对文件名特殊处理
    if ([UIScreen mainScreen].bounds.size.height==568) {
        imageName=[imageName fileAppend:@"-568h@2x"];
//        NSString *ext=[imageName pathExtension];
//        imageName=[imageName stringByDeletingPathExtension];
//        imageName=[imageName stringByAppendingString:@"-568h@2x"];
//        //在此没有认真，所以犯下了错误，吸取教训
//        imageName=[imageName stringByAppendingPathExtension:ext];
        
    }
    //加载图片
    return [self imageNamed:imageName];
}

@end
