//
//  HomeViewController.m
//  StoryBoardDemo
//
//  Created by victor on 2016/10/25.
//  Copyright © 2016年 wsl. All rights reserved.
//

#import "HomeViewController.h"
#import "AboutViewController.h"
@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)storyBoardVC:(id)sender {
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"About" bundle:nil];
    AboutViewController *vc = [story instantiateViewControllerWithIdentifier:@"About"];
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
    
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
