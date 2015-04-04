//
//  UIImage+Thh.m
//  新浪微博
//
//  Created by TOM on 15/4/4.
//  Copyright (c) 2015年 C.C.R. All rights reserved.
//

#import "UIImage+Thh.h"

@implementation UIImage (Thh)
+(UIImage*)fullscreenImage:(NSString *)imageName{

    if ([UIScreen mainScreen].bounds.size.height==568) {
        NSString *ext=[imageName pathExtension];
        imageName=[imageName stringByDeletingPathExtension];
        imageName=[imageName stringByAppendingString:@"-568h@2x"];
        //在此没有认真，所以犯下了错误，吸取教训
        imageName=[imageName stringByAppendingPathExtension:ext];
        
    }
    return [self imageNamed:imageName];
}

@end
