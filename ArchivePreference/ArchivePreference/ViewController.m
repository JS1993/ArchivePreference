//
//  ViewController.m
//  ArchivePreference
//
//  Created by  江苏 on 16/4/19.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)save:(UIButton *)sender {
    //取出偏好设置单例
    NSUserDefaults* defaults=[NSUserDefaults standardUserDefaults];
    //设置内容
    [defaults setObject:@"jiangsu" forKey:@"userName"];
    [defaults setObject:@"123" forKey:@"userKey"];
    [defaults setBool:YES forKey:@"remember"];
}

- (IBAction)read:(UIButton *)sender {
    //取出内容
    NSString* userName=[[NSUserDefaults standardUserDefaults] objectForKey:@"userName"];
    NSLog(@"%@",userName);
    
}

@end
