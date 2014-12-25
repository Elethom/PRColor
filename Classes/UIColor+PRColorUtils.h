//
//  UIColor+PRColorUtils.h
//  PRColor
//
//  Created by Elethom Hunter on 12/25/2014.
//  Copyright (c) 2014 Project Rhinestone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (PRColorUtils)

- (UIImage *)pr_image;

+ (UIColor *)colorWithHex:(unsigned int)hex length:(NSUInteger)length;
+ (UIColor *)colorWithHexString:(NSString *)hexString;

@end
