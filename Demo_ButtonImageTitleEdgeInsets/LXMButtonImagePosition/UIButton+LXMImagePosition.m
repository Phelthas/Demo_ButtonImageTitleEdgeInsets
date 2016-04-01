//
//  UIButton+LXMImagePosition.m
//  Demo_ButtonImageTitleEdgeInsets
//
//  Created by luxiaoming on 16/1/15.
//  Copyright © 2016年 luxiaoming. All rights reserved.
//

#import "UIButton+LXMImagePosition.h"

@implementation UIButton (LXMImagePosition)

- (void)setImagePosition:(LXMImagePosition)postion spacing:(CGFloat)spacing {
    CGFloat buttonWidth = CGRectGetWidth(self.bounds);
    CGFloat buttonHeight = CGRectGetHeight(self.bounds);
    
    CGFloat imageWidth = self.imageView.image.size.width;
    CGFloat imageHeight = self.imageView.image.size.height;
//#pragma clang diagnostic push
//#pragma clang diagnostic ignored "-Wdeprecated-declarations"
    CGFloat labelWidth = [self.titleLabel.text boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : self.titleLabel.font} context:nil].size.width;
    CGFloat labelHeight = [self.titleLabel.text boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : self.titleLabel.font} context:nil].size.height;
//#pragma clang diagnostic pop
    
//    CGFloat imageOffsetX = (imageWidth + labelWidth) / 2 - imageWidth / 2;//image中心移动的x距离
//    CGFloat imageOffsetY = imageHeight / 2 + spacing / 2;//image中心移动的y距离
//    CGFloat labelOffsetX = (imageWidth + labelWidth / 2) - (imageWidth + labelWidth) / 2;//label中心移动的x距离
//    CGFloat labelOffsetY = labelHeight / 2 + spacing / 2;//label中心移动的y距离
    
    CGFloat imageOffsetX = 0;
    CGFloat imageOffsetY = 0;
    CGFloat labelOffsetX = 0;
    CGFloat labelOffsetY = 0;
    
    
    
    
    
    switch (postion) {
        case LXMImagePositionLeft:
            self.imageEdgeInsets = UIEdgeInsetsMake(0, -spacing/2, 0, spacing/2);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, spacing/2, 0, -spacing/2);
            break;
            
        case LXMImagePositionRight:
            if (buttonWidth >= imageWidth + labelWidth) {
                imageOffsetX = (imageWidth + labelWidth) / 2 - imageWidth / 2;//image中心移动的x距离
                imageOffsetY = imageHeight / 2 + spacing / 2;//image中心移动的y距离
                labelOffsetX = (imageWidth + labelWidth / 2) - (imageWidth + labelWidth) / 2;//label中心移动的x距离
                labelOffsetY = labelHeight / 2 + spacing / 2;//label中心移动的y距离
            } else if (buttonWidth >= imageWidth && buttonWidth < (imageWidth + labelWidth)) {
                //button宽度小于(imageWidth + labelWidth) 且大于imageWith，因为图片不会被压缩，所以这种情况相当于label被压缩到了buttonWidth - imageWidth - spacing的宽度；
                labelWidth = buttonWidth - imageWidth - spacing;
                
            } else {
                imageWidth = 0;
                labelWidth = 0;
                spacing = 0;
            }
            
//            if (buttonWidth >= imageWidth + labelWidth) {
//                
//            } else if (buttonWidth >= imageHeight && buttonWidth < (imageHeight + labelWidth)) {
//                labelWidth = buttonWidth - imageWidth - spacing;
//                imageOffsetX = (imageWidth + labelWidth) / 2 - imageWidth / 2;//image中心移动的x距离
//                imageOffsetY = imageHeight / 2 + spacing / 2;//image中心移动的y距离
//                labelOffsetX = (imageWidth + labelWidth / 2) - (imageWidth + labelWidth) / 2;//label中心移动的x距离
//                labelOffsetY = labelHeight / 2 + spacing / 2;//label中心移动的y距离
//            } else {
//                imageOffsetX = 0;
//                imageOffsetY = 0;
//                labelOffsetX = 0;
//                labelOffsetY = 0;
//            }
            
            
            self.imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth + spacing/2, 0, -(labelWidth + spacing/2));
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -(imageHeight + spacing/2), 0, imageHeight + spacing/2);
            break;
            
        case LXMImagePositionTop:
            self.imageEdgeInsets = UIEdgeInsetsMake(-imageOffsetY, imageOffsetX, imageOffsetY, -imageOffsetX);
            self.titleEdgeInsets = UIEdgeInsetsMake(labelOffsetY, -labelOffsetX, -labelOffsetY, labelOffsetX);
            break;
            
        case LXMImagePositionBottom:
            self.imageEdgeInsets = UIEdgeInsetsMake(imageOffsetY, imageOffsetX, -imageOffsetY, -imageOffsetX);
            self.titleEdgeInsets = UIEdgeInsetsMake(-labelOffsetY, -labelOffsetX, labelOffsetY, labelOffsetX);
            break;
            
        default:
            break;
    }
    
}

@end
