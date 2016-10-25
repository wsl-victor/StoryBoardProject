//
//  MainTabBarController.m
//  StoryBoardDemo
//
//  Created by victor on 2016/10/25.
//  Copyright © 2016年 wsl. All rights reserved.
//

#import "MainTabBarController.h"
#import "SBDNavigationViewController.h"
@interface MainTabBarController ()

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    //第一个 首页
    SBDNavigationViewController *homeNav = [[UIStoryboard storyboardWithName:@"Home" bundle:[NSBundle mainBundle]] instantiateInitialViewController];
    UITabBarItem *homeItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFeatured tag:0];
    homeNav.tabBarItem = homeItem;
    homeNav.title = @"首页";
    
    //第二个 主页
    SBDNavigationViewController *searchNav = [[UIStoryboard storyboardWithName:@"Search" bundle:[NSBundle mainBundle]] instantiateInitialViewController];
    UITabBarItem *searchItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemSearch tag:0];
    searchNav.tabBarItem = searchItem;
    searchNav.title = @"搜索";
    
    //第三个 关于
    SBDNavigationViewController *aboutNav = [[UIStoryboard storyboardWithName:@"About" bundle:[NSBundle mainBundle]] instantiateInitialViewController];
    UITabBarItem *aboutItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:0];
    aboutNav.tabBarItem = aboutItem;
    aboutNav.title = @"观月";
    
    
    //第三个 关于
    SBDNavigationViewController *messageNav = [[UIStoryboard storyboardWithName:@"Message" bundle:[NSBundle mainBundle]] instantiateInitialViewController];
    UITabBarItem *messageItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:0];
    messageNav.tabBarItem = messageItem;
    messageNav.title = @"观月";
    
    // 将视图控制器添加至数组中
    NSArray *viewControllers = @[homeNav,searchNav,aboutNav,messageNav];
    self.viewControllers = viewControllers;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
