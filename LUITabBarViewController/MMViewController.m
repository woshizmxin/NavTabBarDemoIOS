//
//  MMViewController.m
//  LUITabBarViewController
//
//  Created by OranWu on 13-1-6.
//  Copyright (c) 2013年 Oran Wu. All rights reserved.
//

#import "MMViewController.h"

@interface MMViewController ()

@end

@implementation MMViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0 green:0.5 blue:0.5 alpha:0.5];
    self.navigationItem.title = @"其他的";
    
    //注意通过tabBarController或者parentViewController可以得到其俯视图控制器（也就是KCTabBarViewController）
    NSLog(@"%i",self.tabBarController==self.parentViewController);//对于当前应用二者相等
    
    //设置图标、标题(tabBarItem是显示在tabBar上的标签)
    self.tabBarItem.title=@"我的";//注意如果这个标题不设置默认在页签上显示视图控制器标题
//    self.tabBarItem.image=[UIImage imageNamed:@"tab_location"];//默认图片
    
    //图标右上角内容
    self.tabBarItem.badgeValue=@"5";

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
