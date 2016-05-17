# RXImageTextMixedSort
## 图文混排 label自使用高度
---
>没有底层的知识

---
###例子(如下): / Examples
```objc
    
    ///假数据 自动随机生成
    
    /// 随机日期-最近一个月随机
    + (NSString *)randomDateString;
    /// 随机日期---- 几个月随机
    + (NSString *)randomDateStringWithinCount:(NSInteger)count;
    /// 随机汉字--100 以内
    + (NSString *)randomChinas;
    /// 随机汉字--count 以内
    + (NSString *)randomChinasWithinCount:(NSInteger)count;
    /// 字符串 -- 不定长
    + (NSString *)randomString;
    /// 随机字母 - 26个
    + (NSString *)randomLetter;
    /// 随机字母 - 不定长
    + (NSString *)randomLetterWithInCount:(NSInteger)count;

    /// 随机 给出 图片网址 （自己可以编辑）
    + (NSString *) randomImageURL;

    /// 随机颜色
    + (UIColor *)randomColor;

    /// 返回当前日期时间
    + (double)randomNowDate;

    /// 随机倒计时日期时间 (前提是大于当前时间)
    + (NSString *)randomTimeCountdown;
```
###效果图(如下):
---
![srxboys](https://github.com/srxboys/RXImageTextMixedSort/blob/master/srxboys_imageTextMixedSort.gif) 

