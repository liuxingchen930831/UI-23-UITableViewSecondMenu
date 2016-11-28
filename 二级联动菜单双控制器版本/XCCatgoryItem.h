//
//  XCCatgoryItem.h
//  二级联动菜单双控制器版本
//
//  Created by liuxingchen on 16/11/25.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XCCatgoryItem : NSObject
/** 存放subCatgory数组 */
@property(nonatomic,strong)NSArray * subcategories ;

/** 图片名 */
@property(nonatomic,copy)NSString * icon ;

/** 标题 */
@property(nonatomic,copy)NSString * name;
/** 选中图片 */
@property(nonatomic,copy)NSString * highlighted_icon;

+(instancetype)catgoryWithDict:(NSDictionary *)dict;
@end
