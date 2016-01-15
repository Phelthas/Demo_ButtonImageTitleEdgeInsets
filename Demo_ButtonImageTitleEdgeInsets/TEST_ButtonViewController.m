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


@property (weak, nonatomic) IBOutlet UIButton *originalButton_line;
@property (weak, nonatomic) IBOutlet UIButton *oneButton_line;
@property (weak, nonatomic) IBOutlet UIButton *twoButton_line;
@property (weak, nonatomic) IBOutlet UIButton *threeButton_line;


@end

@implementation TEST_ButtonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupDefault];
    
    //图片是60*60的2x的图
    CGFloat imageWith = 30;
    CGFloat imageHeight = 30;
    CGFloat labelWidth = [self.originalButton.titleLabel.text sizeWithFont:self.originalButton.titleLabel.font].width;
    CGFloat labelHeight = [self.originalButton.titleLabel.text sizeWithFont:self.originalButton.titleLabel.font].height;
    
    //image在后，文字在前
    self.oneButton.imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth, 0, -labelWidth);
    self.oneButton.titleEdgeInsets = UIEdgeInsetsMake(0, -imageWith, 0, imageWith);
    
    [self.oneButton_line setImagePosition:LXMImagePositionRight spacing:10];
    
    //image在上，文字在下
    CGFloat imageOffsetX = (imageWith + labelWidth) / 2 - imageWith / 2;//image中心移动的x距离
    CGFloat imageOffsetY = imageHeight / 2;//image中心移动的y距离
    CGFloat labelOffsetX = (imageWith + labelWidth / 2) - (imageWith + labelWidth) / 2;//label中心移动的x距离
    CGFloat labelOffsetY = labelHeight / 2;//label中心移动的y距离
    
    self.twoButton.imageEdgeInsets = UIEdgeInsetsMake(-imageOffsetY, imageOffsetX, imageOffsetY, -imageOffsetX);
    self.twoButton.titleEdgeInsets = UIEdgeInsetsMake(labelOffsetY, -labelOffsetX, -labelOffsetY, labelOffsetX);
    
    [self.twoButton_line setImagePosition:LXMImagePositionTop spacing:10];
    
    
    //image，label中间间隔10
    self.threeButton.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0);
    self.threeButton.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);//注意看显示，label因为大小不够文字显示不全了，如果button大小更大的话这样写也没有问题
    
    [self.threeButton_line setImagePosition:LXMImagePositionLeft spacing:10];//这样文字图片都能正常显示，但是button大小没有变化
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
