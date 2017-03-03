//
//  ViewController.m
//  ScrollViewDemo
//
//  Created by xie on 17/1/23.
//  Copyright © 2017年 drt. All rights reserved.
//
#define SCREEN_WIDTH                    CGRectGetWidth([UIScreen mainScreen].bounds)
#define SCREEN_HEIGHT                   CGRectGetHeight([UIScreen mainScreen].bounds)
#define TITLE_HEIGHT                    64.f

#import "ViewController.h"
#import "OneViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"

#import "WMPageController.h"
#import "CustomView.h"

@interface ViewController ()<UIScrollViewDelegate>{
    
    
//    UIScrollView       *_mainScrollView;
}

@property(nonatomic, strong)UIViewController *currentVC;
@property(nonatomic, strong)UIViewController *twoVC;
@property(nonatomic, strong)UIViewController *oneVC;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.hidden = YES;
    
    UIButton *button1 = [UIButton buttonWithType:0];
    button1.backgroundColor = [UIColor greenColor];
    button1.tag = 0;
    button1.frame = CGRectMake(100, 70, 100, 50);
    [button1 addTarget:self action:@selector(changeView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];


    
    CustomView *customView = [[CustomView alloc]initWithFrame:CGRectMake(0, 0, 320, self.view.frame.size.height)];
    [self.view addSubview:customView];
}


- (void)changeView:(UIButton *)button{
    
    WMPageController *pageController = [self pageControllerStyleFlood];

    pageController.menuHeight = 44;
    pageController.showOnNavigationBar = YES;
    pageController.titleSizeSelected = 15;
    pageController.menuViewStyle = WMMenuViewStyleSegmented;
    pageController.menuViewLayoutMode = WMMenuViewLayoutModeCenter;
    pageController.titleColorSelected = [UIColor whiteColor];
    pageController.titleColorNormal = [UIColor blackColor];
    pageController.progressColor = [UIColor blackColor];
    pageController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:nil action:nil];

    
    [self.navigationController pushViewController:pageController animated:YES];
    
    
    
//    [self.navigationController pushViewController:[[OneViewController alloc]init] animated:YES];

    
}

- (WMPageController *)pageControllerStyleFlood {
    NSArray *viewControllers = @[[OneViewController class], [TwoViewController class], [ThreeViewController class]];
    NSArray *titles = @[@"one", @"two", @"three"];
    
    WMPageController *pageVC = [[WMPageController alloc] initWithViewControllerClasses:viewControllers andTheirTitles:titles];
    pageVC.titleSizeSelected = 15;
    pageVC.pageAnimatable = YES;
    pageVC.menuViewStyle = WMMenuViewStyleFlood;
    pageVC.titleColorSelected = [UIColor whiteColor];
    pageVC.titleColorNormal = [UIColor colorWithRed:168.0/255.0 green:20.0/255.0 blue:4/255.0 alpha:1];
    pageVC.progressColor = [UIColor colorWithRed:168.0/255.0 green:20.0/255.0 blue:4/255.0 alpha:1];
    pageVC.itemsWidths = @[@(70),@(70),@(70)]; // 这里可以设置不同的宽度
    pageVC.menuViewLayoutMode = WMMenuViewLayoutModeCenter;
    //    pageVC.menuViewStyle = WMMenuViewStyleSegmented;
    return pageVC;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
