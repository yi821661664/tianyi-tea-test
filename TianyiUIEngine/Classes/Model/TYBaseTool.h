//
//  TYBaseTool.h
//  Colours
//
//  Created by 易召强 on 2022/11/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TYBaseTool : NSObject

+ (UIImage *)getImagaResource:(NSString*)name bundleName:(NSString*)bundleName;

+ (NSString *)getFilePath:(NSString*)name type:(NSString *)type bundleName:(NSString*)bundleName;

@end

NS_ASSUME_NONNULL_END
