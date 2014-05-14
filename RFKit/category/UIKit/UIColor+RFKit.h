/*!
    UIColor extension
    RFKit

    Copyright (c) 2012-2013 BB9z
    https://github.com/bb9z/RFKit

    The MIT License (MIT)
    http://www.opensource.org/licenses/mit-license.php
 */

#import "RFRuntime.h"

@interface UIColor (RFKit)

- (UIColor *)initWithRGBHex:(NSInteger)hexValue alpha:(CGFloat)alpha;
+ (UIColor*)colorWithRGBHex:(NSInteger)hexValue alpha:(CGFloat)alpha;
+ (UIColor*)colorWithRGBHex:(NSInteger)hexValue;

+ (UIColor *)colorWithRGBString:(NSString *)nsstring;
+ (UIColor *)colorWithRGBString:(NSString *)nsstring alpha:(CGFloat)alpha;

+ (UIColor *)colorWithPatternImageName:(NSString *)resourceName;

+ (UIColor *)randColorWithAlpha:(CGFloat)alpha;

/**
 Creates and returns a mixed color object using the specified mix ratio and color.

 @param ratio Mix ratio of the receiver.
 @param color Another color to mix with the receiver.

 @return The color object.
 */
- (UIColor *)mixedColorWithRatio:(CGFloat)ratio color:(UIColor *)color;
@end
