/* 文件 : NSDictionary+Log.h
 * 作者 : 杨云兴
 * 邮箱 : 747616044@qq.com
 * 日期 : 2016/11/13
 * 版权 : COPYRIGHT___
 */

#import "NSDictionary+Log.h"
#import "NSString+unicode.h"

@implementation NSDictionary (Log)

#ifdef DEBUG
- (NSString *)descriptionWithLocale:(id)locale{
    return self.debugDescription;
}

- (NSString *)debugDescription{
    return self.description.unicodeString;
}
#endif

@end
