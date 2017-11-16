//
//  ViewController.m
//  FFmpeg_Demo
//
//  Created by Mr.H on 2017/11/16.
//  Copyright © 2017年 Mr.H. All rights reserved.
//

#import "ViewController.h"
#import "FFmpegTest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    /// 测试一
    [FFmpegTest ffmpegTestConfig];
    
    /// 测试二
    
    NSString *path = [[NSBundle mainBundle]pathForResource:@"111" ofType:@".mp4"];
    
    [FFmpegTest ffmpegOpenFile:path];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
