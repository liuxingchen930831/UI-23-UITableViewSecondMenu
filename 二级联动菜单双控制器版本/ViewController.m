//
//  ViewController.m
//  二级联动菜单双控制器版本
//
//  Created by liuxingchen on 16/11/25.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import "ViewController.h"
#import "XCCatgoryViewController.h"
#import "XCSubCatgoryViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat width = self.view.frame.size.width *0.5;
    CGFloat heigth = self.view.frame.size.height;
    
    XCSubCatgoryViewController *subCatgory = [[XCSubCatgoryViewController alloc]init];
    subCatgory.view.frame = CGRectMake(width, 0, width, heigth);
    
    [self.view addSubview:subCatgory.view];
    [self addChildViewController:subCatgory];
    
    
    XCCatgoryViewController *catgory = [[XCCatgoryViewController alloc]init];
    catgory.view.frame = CGRectMake(0, 0, width, heigth);
    catgory.delgate = subCatgory;
    [self.view addSubview:catgory.view];
    [self addChildViewController:catgory];
    
    
    
}
@end
