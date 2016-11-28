//
//  XCCatgoryItem.m
//  二级联动菜单双控制器版本
//
//  Created by liuxingchen on 16/11/25.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import "XCCatgoryItem.h"

@implementation XCCatgoryItem
+(instancetype)catgoryWithDict:(NSDictionary *)dict
{
    XCCatgoryItem *item = [[self alloc]init];
    [item setValuesForKeysWithDictionary:dict];
    return item;
}
@end
