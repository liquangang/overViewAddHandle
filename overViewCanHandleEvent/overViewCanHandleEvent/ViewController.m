//
//  ViewController.m
//  codeTest1
//
//  Created by biyao on 2017/3/22.
//  Copyright © 2017年 biyao. All rights reserved.
//

#import "ViewController.h"
#import "customeButton.h"

//property
#define StrongProperty @property (nonatomic, strong)

@interface ViewController ()
StrongProperty customeButton *btn1;
StrongProperty UIButton *bth2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setUI];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - interface

- (void)bth1Action{
    NSLog(@"btn1响应");
}

- (void)btn2Action{
    NSLog(@"btn2响应");
}

- (void)setUI{
    [self.view addSubview:self.btn1];
    [self.btn1 addSubview:self.bth2];
}

#pragma mark - getter

- (customeButton *)btn1
{
    if (!_btn1)
    {
        _btn1 = [[customeButton alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
        [_btn1 addTarget:self action:@selector(bth1Action) forControlEvents:UIControlEventTouchUpInside];
        _btn1.backgroundColor = [UIColor greenColor];
    }
    return _btn1;
}

- (UIButton *)bth2
{
    if (!_bth2)
    {
        _bth2 = [[UIButton alloc] initWithFrame:CGRectMake(10, 10, 200, 200)];
        _bth2.backgroundColor = [UIColor redColor];
        [_bth2 addTarget:self action:@selector(btn2Action) forControlEvents:UIControlEventTouchUpInside];
    }
    return _bth2;
}


@end
