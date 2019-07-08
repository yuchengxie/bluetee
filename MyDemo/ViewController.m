//
//  ViewController.m
//  MyDemo
//
//  Created by 玉成 on 2019/7/8.
//  Copyright © 2019 hzf. All rights reserved.
//

#import "ViewController.h"
#import "lib/NZSIMSDK/NZSIMSDK.h"
#import "lib/NZIKeySDK/NZIKey.h"

@interface ViewController ()<NZSIMSDKDelegate>{
    NZSIMSDK *shareSdk;
    NZIKey *ikey;
}

@property (weak, nonatomic) IBOutlet UIButton *btnConnect;
@property (weak, nonatomic) IBOutlet UITextField *bleName;
@property (weak, nonatomic) IBOutlet UITextField *pinCode;
@end

@implementation ViewController

- (IBAction)connect:(id)sender {
    NSLog(@"123");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initView];
    shareSdk=[NZSIMSDK shareSdk];
    ikey=[[NZIKey alloc]init];
    
    
   
//    shareSdk.sim_delegate=self;
//    NSLog(@"%@",shareSdk);
    // Do any additional setup after loading the view.
}

-(void)initView{
    CAGradientLayer *layer = [CAGradientLayer layer];
    layer.startPoint = CGPointMake(0, 0);//（0，0）表示从左上角开始变化。默认值是(0.5,0.0)表示从x轴为中间，y为顶端的开始变化
    layer.endPoint = CGPointMake(1, 1);//（1，1）表示到右下角变化结束。默认值是(0.5,1.0)  表示从x轴为中间，y为低端的结束变化
    layer.colors = [NSArray arrayWithObjects:(id)[UIColor blackColor].CGColor,(id)[UIColor darkGrayColor].CGColor,(id)[UIColor blackColor].CGColor, nil];
    layer.locations = @[@0.0f,@0.6f,@1.0f];//渐变颜色的区间分布，locations的数组长度和color一致，这个值一般不用管它，默认是nil，会平均分布
    layer.frame = self.view.layer.bounds;
    [self.view.layer insertSublayer:layer atIndex:0];
    
//    _btnConnect.frame = CGRectMake(50,50,100,40);
    _btnConnect.backgroundColor = [UIColor darkGrayColor];
    //关键语句
    _btnConnect.layer.cornerRadius = 5.0;//2.0是圆角的弧度，根据需求自己更改
    _btnConnect.layer.borderColor = [UIColor whiteColor].CGColor;//设置边框颜色
    _btnConnect.layer.borderWidth = 1.0f;//设置边框颜色
    
}

@end
