//
//  RXCellHeight.h
//  RXImageTextMixedSort
//
//  Created by srx on 16/5/17.
//  Copyright © 2016年 https://github.com/srxboys. . All rights reserved.
//计算高度

#import <UIKit/UIKit.h>

#define ScreenWidth  [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height
//屏幕适配
#define ActureHeight(_height) (_height / 375.0 * ScreenWidth)

@class RXDataModel;

@interface RXCellHeight : NSObject

@property (nonatomic, copy) RXDataModel * model;

@property (nonatomic, assign, readonly) CGFloat txtHeight;
@property (nonatomic, assign, readonly) CGFloat cellHeight;

@end
