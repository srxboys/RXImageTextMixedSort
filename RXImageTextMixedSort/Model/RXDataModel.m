//
//  RXDataModel.m
//  RXImageTextMixedSort
//
//  Created by srx on 16/5/17.
//  Copyright © 2016年 https://github.com/srxboys. . All rights reserved.
//

#import "RXDataModel.h"

@implementation RXDataModel
- (instancetype)initWithDict:(NSDictionary *)dict  {
    self = [super init];
    if(self) {
        //我这里没有判断 是否 有空值 的，这个你自己处理吧
        self.name  = dict[@"name"];
        self.time  = dict[@"time"];
        self.image = dict[@"image"];
        self.text  = dict[@"text"];
    }
    return self;
}

+ (RXDataModel *)dataModelWithDict:(NSDictionary *)dict {
    return [[RXDataModel alloc] initWithDict:dict];
}
@end
