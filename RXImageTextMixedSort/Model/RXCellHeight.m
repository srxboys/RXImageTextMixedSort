//
//  RXCellHeight.m
//  RXImageTextMixedSort
//
//  Created by srx on 16/5/17.
//  Copyright © 2016年 https://github.com/srxboys. . All rights reserved.
//

#import "RXCellHeight.h"
#import "RXDataModel.h"

@implementation RXCellHeight
- (void)setModel:(RXDataModel *)model {
    _model = model;
    //下面具体的 高度计算，看你的cell怎么布局的
    
//    NSLog(@"model.text=%@", model.text);
    
    CGFloat top = 10;
    top += 14;//名字、时间 的label
    top += 10; //图片距 名字、时间的label的高度
    top += ActureHeight(150); //图片屏幕适配的高度
    top += 10;
    //中间文字的高度，在下面计算
    top += 10;
    
    //文字的距离
    CGFloat left = 10; //right=10
    CGFloat width = ScreenWidth - left * 2;
    
    //此时的labe必须要和 cell中的label 设置一致
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(left, 0, width, 10)];
    label.font = [UIFont systemFontOfSize:14];
    label.numberOfLines = 0;
    label.text = _model.text;
    
    //第一种 算高度 我一直用这个 ，这个是iOS4出现的
    //    [label sizeToFit];
    //    _txtHeight = label.frame.size.height;
    //    _cellHeight = top + _txtHeight;
    
    //第二种 算高度  今天用用这个，这个是最新的计算方法 -- 我推荐
    CGRect rect = [label textRectForBounds:CGRectMake(left, 0, width, CGFLOAT_MAX) limitedToNumberOfLines:0];
    
    //第三种 对于特殊文字、字符，计算的结果并不满人意
    //   CGRect rect = [label.text boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading  | NSStringDrawingUsesDeviceMetrics attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:14]} context:nil];
    
    _txtHeight = rect.size.height;
    _cellHeight = top + _txtHeight;
    
}
@end
