//
//  TEST_ButtonViewController.m
//  TEST_Base
//
//  Created by luxiaoming on 15/4/23.
//  Copyright (c) 2015年 XiaoMing. All rights reserved.
//

#import "TEST_ButtonViewController.h"
#import "UIButton+LXMImagePosition.h"

@interface TEST_ButtonViewController ()

@property (weak, nonatomic) IBOutlet UIButton *originalButton;
@property (weak, nonatomic) IBOutlet UIButton *oneButton;
@property (weak, nonatomic) IBOutlet UIButton *twoButton;
@property (weak, nonatomic) IBOutlet UIButton *threeButton;
@property (weak, nonatomic) IBOutlet UIButton *fourButton;


@property (weak, nonatomic) IBOutlet UIButton *originalButton_line;
@property (weak, nonatomic) IBOutlet UIButton *oneButton_line;
@property (weak, nonatomic) IBOutlet UIButton *twoButton_line;
@property (weak, nonatomic) IBOutlet UIButton *threeButton_line;
@property (weak, nonatomic) IBOutlet UIButton *fourButton_line;

@property (weak, nonatomic) IBOutlet UIButton *originalButton_line_1;
@property (weak, nonatomic) IBOutlet UIButton *oneButton_line_1;
@property (weak, nonatomic) IBOutlet UIButton *twoButton_line_1;
@property (weak, nonatomic) IBOutlet UIButton *threeButton_line_1;
@property (weak, nonatomic) IBOutlet UIButton *fourButton_line_1;



@end

@implementation TEST_ButtonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupDefault];
    
    //图片是60*60的2x的图
    CGFloat imageWidth = 30;
    CGFloat imageHeight = 30;
    CGFloat labelWidth = [self.originalButton.titleLabel.text sizeWithFont:self.originalButton.titleLabel.font].width;
    CGFloat labelHeight = [self.originalButton.titleLabel.text sizeWithFont:self.originalButton.titleLabel.font].height;
    
    CGFloat spacing = 10;
    
    //image在左，文字在右，default
    self.oneButton.imageEdgeInsets = UIEdgeInsetsMake(0, -spacing/2, 0, spacing/2);
    self.oneButton.titleEdgeInsets = UIEdgeInsetsMake(0, spacing/2, 0, -spacing/2);
    
    self.oneButton_line.imageEdgeInsets = UIEdgeInsetsMake(0, -spacing/2, 0, spacing/2);
    self.oneButton_line.titleEdgeInsets = UIEdgeInsetsMake(0, spacing/2, 0, -spacing/2);
    
    [self.oneButton_line_1 setImagePosition:LXMImagePositionLeft spacing:spacing];
    
    
    //image在右，文字在左
    self.twoButton.imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth + spacing/2, 0, -(labelWidth + spacing/2));
    self.twoButton.titleEdgeInsets = UIEdgeInsetsMake(0, -(imageWidth + spacing/2), 0, imageWidth + spacing/2);
    
    self.twoButton_line.imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth + spacing/2, 0, -(labelWidth + spacing/2));
    self.twoButton_line.titleEdgeInsets = UIEdgeInsetsMake(0, -(imageWidth + spacing/2), 0, imageWidth + spacing/2);
    
    [self.twoButton_line_1 setImagePosition:LXMImagePositionRight spacing:spacing];
    
    //image在上，文字在下
    CGFloat imageOffsetX = (imageWidth + labelWidth) / 2 - imageWidth / 2;//image中心移动的x距离
    CGFloat imageOffsetY = imageHeight / 2 + spacing / 2;//image中心移动的y距离
    CGFloat labelOffsetX = (imageWidth + labelWidth / 2) - (imageWidth + labelWidth) / 2;//label中心移动的x距离
    CGFloat labelOffsetY = labelHeight / 2 + spacing / 2;//label中心移动的y距离
    
    self.threeButton.imageEdgeInsets = UIEdgeInsetsMake(-imageOffsetY, imageOffsetX, imageOffsetY, -imageOffsetX);
    self.threeButton.titleEdgeInsets = UIEdgeInsetsMake(labelOffsetY, -labelOffsetX, -labelOffsetY, labelOffsetX);
    
    self.threeButton_line.imageEdgeInsets = UIEdgeInsetsMake(-imageOffsetY, imageOffsetX, imageOffsetY, -imageOffsetX);
    self.threeButton_line.titleEdgeInsets = UIEdgeInsetsMake(labelOffsetY, -labelOffsetX, -labelOffsetY, labelOffsetX);
    
    [self.threeButton_line_1 setImagePosition:LXMImagePositionTop spacing:spacing];
    
    
    //image在下，文字在上
    self.fourButton.imageEdgeInsets = UIEdgeInsetsMake(imageOffsetY, imageOffsetX, -imageOffsetY, -imageOffsetX);
    self.fourButton.titleEdgeInsets = UIEdgeInsetsMake(-labelOffsetY, -labelOffsetX, labelOffsetY, labelOffsetX);
    
    self.fourButton_line.imageEdgeInsets = UIEdgeInsetsMake(imageOffsetY, imageOffsetX, -imageOffsetY, -imageOffsetX);
    self.fourButton_line.titleEdgeInsets = UIEdgeInsetsMake(-labelOffsetY, -labelOffsetX, labelOffsetY, labelOffsetX);
    
    [self.fourButton_line_1 setImagePosition:LXMImagePositionBottom spacing:spacing];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    
    
}

- (void)setupDefault {
    [self setupButton:self.originalButton_line];
    [self setupButton:self.oneButton_line];
    [self setupButton:self.twoButton_line];
    [self setupButton:self.threeButton_line];
    [self setupButton:self.fourButton_line];
    
    [self setupButton:self.originalButton_line_1];
    [self setupButton:self.oneButton_line_1];
    [self setupButton:self.twoButton_line_1];
    [self setupButton:self.threeButton_line_1];
    [self setupButton:self.fourButton_line_1];
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
