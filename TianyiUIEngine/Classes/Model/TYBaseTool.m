//
//  TYBaseTool.m
//  Colours
//
//  Created by 易召强 on 2022/11/11.
//

#import "TYBaseTool.h"

@implementation TYBaseTool

+ (UIImage *)getImagaResource:(NSString*)name bundleName:(NSString*)bundleName {
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"Frameworks" withExtension:nil];
    url = [url URLByAppendingPathComponent:[NSString stringWithFormat:@"%@.framework",bundleName]];
    UIImage *image = nil;
    if (url) {
        NSBundle *bundle = [NSBundle bundleWithURL:url];
        url = [bundle URLForResource:bundleName withExtension:@"bundle"];
        NSString *imageStr = [NSString stringWithFormat:@"icons/%@@%.0fx.png",name,[UIScreen mainScreen].scale];
        bundle = [NSBundle bundleWithURL:url];
        image = [UIImage imageWithContentsOfFile:[bundle pathForResource:imageStr ofType:nil]];
    }
    return image;
}

+ (NSString *)getFilePath:(NSString*)name type:(NSString *)type bundleName:(NSString*)bundleName {
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"Frameworks" withExtension:nil];
    url = [url URLByAppendingPathComponent:[NSString stringWithFormat:@"%@.framework",bundleName]];
    NSString *filePath = nil;
    if (url) {
        NSBundle *bundle = [NSBundle bundleWithURL:url];
        url = [bundle URLForResource:bundleName withExtension:@"bundle"];
        bundle = [NSBundle bundleWithURL:url];
        filePath = [bundle pathForResource:name ofType:type];
    }
    return filePath;
}

@end
