//
//  ViewController.m
//  XMMovableButtonDemo
//
//  Created by 万晓 on 16/9/18.
//  Copyright © 2016年 wxm. All rights reserved.
//

#import "ViewController.h"
#import "XMMovableButton.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createMovableButton];
}

#pragma mark - 创建移动搜索按钮
-(void)createMovableButton{
    
        CGFloat buttonW=50;
        CGFloat buttonH=buttonW;
        CGFloat buttonX=[UIScreen mainScreen].bounds.size.width-buttonW;
        CGFloat buttonY=[UIScreen mainScreen].bounds.size.height-buttonH-50;
    
        XMMovableButton *movableButton=[[XMMovableButton alloc] init];
    
        movableButton.frame=CGRectMake(buttonX, buttonY, buttonW, buttonH);
        
        //点击事件
        [movableButton addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
        
        //圆角
        movableButton.layer.cornerRadius=buttonW/2;
        movableButton.layer.masksToBounds=YES;
        
        //按钮图片
        [movableButton setImage:[UIImage imageNamed:@"bg_bar_category_find"] forState:UIControlStateNormal];

    [self.view addSubview:movableButton];
}

-(void)buttonClick{
    
    SecondViewController *secondVc=[[SecondViewController alloc] init];
    
    [self.navigationController pushViewController:secondVc animated:YES];
    
}

@end
