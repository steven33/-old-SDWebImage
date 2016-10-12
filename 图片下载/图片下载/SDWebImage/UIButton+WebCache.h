//
//  UIButton+WebCache.h
//  WXWeibo
//
//  Created by wei.chen on 13-2-4.
//  Copyright (c) 2013年 www.iphonetrain.com . All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SDWebImageManagerDelegate.h"

@interface UIButton (WebCache)<SDWebImageManagerDelegate>

- (void)setImageWithURL:(NSURL *)url;
- (void)setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder;
- (void)cancelCurrentImageLoad;

@end
