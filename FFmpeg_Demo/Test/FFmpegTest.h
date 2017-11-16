//
//  FFmpegTest.h
//  FFmpeg_Demo
//
//  Created by Mr.H on 2017/11/16.
//  Copyright © 2017年 Mr.H. All rights reserved.
//

#import <Foundation/Foundation.h>
// 引入头文件
// 核心库-音视频编码库
#import <libavcodec/avcodec.h>

/// 导入封装格式库
#import <libavformat/avformat.h>
@interface FFmpegTest : NSObject

// 测试FFmpeg配置
+(void)ffmpegTestConfig;

// 打开一个文件
+(void)ffmpegOpenFile:(NSString*)filePath;

@end
