//
//  UIColor+PRColorUtils.m
//  PRColor
//
//  Created by Elethom Hunter on 8/1/14.
//  Copyright (c) 2014 Project Rhinestone. All rights reserved.
//

#import "UIColor+PRColorUtils.h"

@implementation UIColor (PRColorUtils)

- (UIImage *)pr_image
{
    CGRect rect = CGRectMake(0, 0, 1.f, 1.f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, self.CGColor);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

+ (UIColor *)colorWithHex:(unsigned int)hex length:(NSUInteger)length
{
    if (length == 3) {
        return [UIColor colorWithRed:(hex >> 8 & 0xF) / 15.f
                               green:(hex >> 4 & 0xF) / 15.f
                                blue:(hex & 0xF) / 15.f
                               alpha:1.f];
    } else if (length == 6) {
        return [UIColor colorWithRed:(hex >> 16 & 0xFF) / 255.f
                               green:(hex >> 8 & 0xFF) / 255.f
                                blue:(hex & 0xFF) / 255.f
                               alpha:1.f];
    } else if (length == 8) {
        return [UIColor colorWithRed:(hex >> 24 & 0xFF) / 255.f
                               green:(hex >> 16 & 0xFF) / 255.f
                                blue:(hex >> 8 & 0xFF) / 255.f
                               alpha:(hex & 0xFF) / 255.f];
    } else {
        return nil;
    }
}

+ (UIColor *)colorWithHexString:(NSString *)hexString
{
    if ([hexString hasPrefix:@"#"]) {
        hexString = [hexString substringFromIndex:1];
    }
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    unsigned int hex;
    return [scanner scanHexInt:&hex] ? [self colorWithHex:hex length:hexString.length] : nil;
}

@end
