/* 文件 : NSString+unicode.m
 * 作者 : 杨云兴
 * 邮箱 : 747616044@qq.com
 * 日期 : 2016/11/13
 * 版权 :   Copyright © 2016年 iOSSinger. All rights reserved.
 */

#import "NSString+unicode.h"

@implementation NSString (unicode)
- (NSString *)unicodeString{
    
    NSString *tempStr1 = [self stringByReplacingOccurrencesOfString:@"\\u" withString:@"\\U"];
    
    NSString *tempStr2 = [tempStr1 stringByReplacingOccurrencesOfString:@"\"" withString:@"\\\""];
    
    NSString *tempStr3 = [[@"\"" stringByAppendingString:tempStr2] stringByAppendingString:@"\""];
    
    NSData *tempData = [tempStr3 dataUsingEncoding:NSUTF8StringEncoding];
    
    
     NSPropertyListFormat format = NSPropertyListOpenStepFormat;
    
     NSString *returnStr = [NSPropertyListSerialization propertyListWithData:tempData options:NSPropertyListImmutable format:&format error:nil];
  
    return [returnStr stringByReplacingOccurrencesOfString:@"\\r\\n" withString:@"\n"];
    
  
}
@end
