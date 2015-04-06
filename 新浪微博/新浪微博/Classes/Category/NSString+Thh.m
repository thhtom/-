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
    //获得文件拓展名
    NSString *ext=[self pathExtension];
    //删除最后的扩展名
    NSString *imageName=[self stringByDeletingPathExtension];
    //拼接—568h@2x
    imageName=[imageName stringByAppendingString:append];
    //拼接拓展名
    return [imageName stringByAppendingPathExtension:ext];
}

@end
