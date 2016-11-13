/* 文件 : NSArray+Log.h
 * 作者 : 杨云兴
 * 邮箱 : 747616044@qq.com
 * 日期 : 2016/11/13
 * 版权 : COPYRIGHT___
 */

#import "NSArray+Log.h"
#import "NSString+unicode.h"

@implementation NSArray (Log)

#ifdef DEBUG
- (NSString *)descriptionWithLocale:(id)locale{
    return self.debugDescription;
}

- (NSString *)debugDescription{
    return self.description.unicodeString;
}
#endif

@end
