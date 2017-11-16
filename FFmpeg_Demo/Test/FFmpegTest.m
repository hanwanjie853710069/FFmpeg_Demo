//
//  FFmpegTest.m
//  FFmpeg_Demo
//
//  Created by Mr.H on 2017/11/16.
//  Copyright © 2017年 Mr.H. All rights reserved.
//

#import "FFmpegTest.h"

@implementation FFmpegTest

+(void)ffmpegTestConfig {
    
    const char * configurantion = avcodec_configuration();
    
    NSLog(@"配置信息:%s",configurantion);
    
}

+(void)ffmpegOpenFile:(NSString*)filePath {
    
    // 注册组件
    av_register_all();
    
    // 打开封装格式得文件
    
     //参数一:封装格式上下文
    AVFormatContext * avformat_context = avformat_alloc_context();
    
     //参数二:打开视频地址path
    const char *url = [filePath UTF8String];
    
     //参数三:指定输入封装格式 采用默认格式
    
     //参数四: 默认配置信息  采用默认格式
    
    int avformat_open_input_reuslt =  avformat_open_input(&avformat_context, url, NULL, NULL);
    
    if (avformat_open_input_reuslt != 0) {
        
        // 失败了
        char * error_info = NULL;
        
        av_strerror(avformat_open_input_reuslt, error_info, 1024);
        
        NSLog(@"打开文件失败");
        
        return;
    };
    
    NSLog(@"打开文件成功");
    
}

@end
