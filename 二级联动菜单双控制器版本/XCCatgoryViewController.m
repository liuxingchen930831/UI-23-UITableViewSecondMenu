//
//  XCCatgoryViewController.m
//  二级联动菜单双控制器版本
//
//  Created by liuxingchen on 16/11/25.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import "XCCatgoryViewController.h"
#import "XCCatgoryItem.h"
@interface XCCatgoryViewController ()<XCCatgoryViewControllerDelegate>
/** 数据模型 */
@property(nonatomic,strong)NSArray * catgorys ;
@end
static NSString * const catgoryID = @"atgory";

@implementation XCCatgoryViewController

-(NSArray *)catgorys
{
    if (_catgorys ==nil) {
        NSArray *dictArray = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"categories" ofType:@"plist"]];
        
        NSMutableArray *catgoryArray = [NSMutableArray array];
        for (NSDictionary *dict in dictArray) {
            XCCatgoryItem *item = [XCCatgoryItem catgoryWithDict:dict];
            [catgoryArray addObject:item];
        }
         _catgorys = catgoryArray;
    }
    return _catgorys;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:catgoryID];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.catgorys.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:catgoryID];
    XCCatgoryItem *item = self.catgorys[indexPath.row];
    cell.textLabel.text = item.name;
    
    cell.textLabel.highlightedTextColor = [UIColor blueColor];
    
    cell.imageView.image = [UIImage imageNamed:item.icon];
    //设置cell高亮图片
    cell.imageView.highlightedImage = [UIImage imageNamed:item.highlighted_icon];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    XCCatgoryItem *item = self.catgorys[indexPath.row];
    if ([self.delgate respondsToSelector:@selector(CatgoryViewController:didSelectRowAtIndexPath:)]) {
        [self.delgate CatgoryViewController:self didSelectRowAtIndexPath:item.subcategories];
    }
    
}
@end
