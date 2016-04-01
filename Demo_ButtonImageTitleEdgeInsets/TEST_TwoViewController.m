//
//  TEST_TwoViewController.m
//  Demo_ButtonImageTitleEdgeInsets
//
//  Created by luxiaoming on 16/3/28.
//  Copyright © 2016年 luxiaoming. All rights reserved.
//

#import "TEST_TwoViewController.h"
#import "UIButton+LXMImagePosition.h"


@interface TEST_TwoViewController ()

@property (weak, nonatomic) IBOutlet UIButton *oneButton;
@property (weak, nonatomic) IBOutlet UIButton *twoButton;
@property (weak, nonatomic) IBOutlet UIButton *threeButton;

@end

@implementation TEST_TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupButton:self.twoButton];
    
    [self.twoButton setImagePosition:LXMImagePositionTop spacing:10];
    
//    //图片是60*60的2x的图
//    CGFloat imageWith = 30;
//    CGFloat imageHeight = 30;
//    CGFloat labelWidth = [self.twoButton.titleLabel.text sizeWithFont:self.twoButton.titleLabel.font].width;
//    CGFloat labelHeight = [self.twoButton.titleLabel.text sizeWithFont:self.twoButton.titleLabel.font].height;
//    
//    
//    //image在上，文字在下
//    CGFloat imageOffsetX = (imageWith + labelWidth) / 2 - imageWith / 2;//image中心移动的x距离
//    CGFloat imageOffsetY = imageHeight / 2;//image中心移动的y距离
//    CGFloat labelOffsetX = (imageWith + labelWidth / 2) - (imageWith + labelWidth) / 2;//label中心移动的x距离
//    CGFloat labelOffsetY = labelHeight / 2;//label中心移动的y距离
//    
//    self.twoButton.imageEdgeInsets = UIEdgeInsetsMake(-imageOffsetY, imageOffsetX, imageOffsetY, -imageOffsetX);
//    self.twoButton.titleEdgeInsets = UIEdgeInsetsMake(labelOffsetY, -labelOffsetX, -labelOffsetY, labelOffsetX);
//    
//    CGFloat buttonWidth = CGRectGetWidth(self.twoButton.frame);
//    CGFloat buttonHeight = CGRectGetHeight(self.twoButton.frame);
//    
//    if (imageWith > buttonWidth) {
//        CGFloat imageOffsetX = (imageWith - labelWidth) / 2;//image中心移动的x距离
//        CGFloat imageOffsetY = imageHeight / 2;//image中心移动的y距离
//        CGFloat labelOffsetX = (imageWith + labelWidth / 2) - (imageWith + labelWidth) / 2;//label中心移动的x距离
//        CGFloat labelOffsetY = labelHeight / 2;//label中心移动的y距离
//        
//        self.twoButton.imageEdgeInsets = UIEdgeInsetsMake(-imageOffsetY, imageOffsetX, imageOffsetY, -imageOffsetX);
//        self.twoButton.titleEdgeInsets = UIEdgeInsetsMake(labelOffsetY, -labelOffsetX, -labelOffsetY, labelOffsetX);
//
//    } else if ((imageWith + labelWidth) > buttonWidth && imageWith < buttonWidth) {
//        
//    } else if (buttonWidth > (imageWith + labelWidth)) {
//        
//    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)setupButton:(UIButton *)button {
    button.layer.borderColor = [[UIColor greenColor] CGColor];
    button.layer.borderWidth = 1;
    
    button.imageView.layer.borderColor = [[UIColor orangeColor] CGColor];
    button.imageView.layer.borderWidth = 1;
    
    button.titleLabel.layer.borderColor = [[UIColor blueColor] CGColor];
    button.titleLabel.layer.borderWidth = 1;
}

@end
