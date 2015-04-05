//
//  NSString+Thh.m
//  新浪微博
//
//  Created by TOM on 15/4/5.
//  Copyright (c) 2015年 C.C.R. All rights reserved.
//

#import "NSString+Thh.h"

@implementation NSString (Thh)
-(NSString*)fileAppend:(NSString *)append{

    NSString *ext=[self pathExtension];
    NSString *imageName=[self stringByDeletingPathExtension];
    imageName=[imageName stringByAppendingString:append];
    return [imageName stringByAppendingPathExtension:ext];
}

@end
