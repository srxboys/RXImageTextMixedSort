//
//  RXDataModel.h
//  RXImageTextMixedSort
//
//  Created by srx on 16/5/17.
//  Copyright © 2016年 https://github.com/srxboys. . All rights reserved.
//
//数据模型

#import <Foundation/Foundation.h>

@interface RXDataModel : NSObject
@property (nonatomic, copy) NSString * image;
@property (nonatomic, copy) NSString * text;
@property (nonatomic, copy) NSString * name;
@property (nonatomic, copy) NSString * time;

+ (RXDataModel *)dataModelWithDict:(NSDictionary *)dict;
@end
