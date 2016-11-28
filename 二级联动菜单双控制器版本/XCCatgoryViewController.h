//
//  XCCatgoryViewController.h
//  二级联动菜单双控制器版本
//
//  Created by liuxingchen on 16/11/25.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import <UIKit/UIKit.h>

@class XCCatgoryViewController;
@protocol XCCatgoryViewControllerDelegate <NSObject>

@optional
-(void)CatgoryViewController:(XCCatgoryViewController *)catgoryView didSelectRowAtIndexPath:(NSArray *)array;

@end
@interface XCCatgoryViewController : UITableViewController

@property(nonatomic,weak)id<XCCatgoryViewControllerDelegate>  delgate ;
@end
