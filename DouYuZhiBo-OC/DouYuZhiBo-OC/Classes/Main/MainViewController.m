//
//  MainViewController.m
//  DouYuZhiBo-OC
//
//  Created by 江贵铸 on 2016/11/17.
//  Copyright © 2016年 江贵铸. All rights reserved.
//

#import "MainViewController.h"
#import "FollowViewController.h"
#import "HomeViewController.h"
#import "LiveViewController.h"
#import "ProfileViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.tabBar.tintColor = [UIColor orangeColor];
    [self AddChildVC];

}
//设置子控制器
-(void)AddChildVC{
    HomeViewController *HomeVC = [[HomeViewController alloc] init];
    HomeVC.tabBarItem.title = @"首页";
    HomeVC.tabBarItem.image = [UIImage imageNamed:@"btn_home_normal.png"];
    HomeVC.tabBarItem.selectedImage = [UIImage imageNamed:@"btn_home_selected.png"];
    [self addChildViewController:HomeVC];
    
    LiveViewController *LiveVC = [[LiveViewController alloc] init];
    LiveVC.tabBarItem.title = @"直播";
    LiveVC.tabBarItem.image = [UIImage imageNamed:@"btn_column_normal.png"];
    LiveVC.tabBarItem.selectedImage = [UIImage imageNamed:@"btn_column_selected.png"];
    [self addChildViewController:LiveVC];
    
    FollowViewController *FollowVC = [[FollowViewController alloc] init];
    FollowVC.tabBarItem.title = @"关注";
    FollowVC.tabBarItem.image = [UIImage imageNamed:@"btn_live_normal.png"];
    FollowVC.tabBarItem.selectedImage = [UIImage imageNamed:@"btn_live_selected.png"];
    [self addChildViewController:FollowVC];
    
    ProfileViewController *ProfileVC = [[ProfileViewController alloc] init];
    ProfileVC.tabBarItem.title = @"我";
    ProfileVC.tabBarItem.image = [UIImage imageNamed:@"btn_user_normal.png"];
    ProfileVC.tabBarItem.selectedImage = [UIImage imageNamed:@"btn_user_selected.png"];
    [self addChildViewController:ProfileVC];

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
