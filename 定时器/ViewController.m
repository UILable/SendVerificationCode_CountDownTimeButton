//
//  ViewController.m
//  定时器
//
//

#import "ViewController.h"
#import "CountDownTimeButton.h"
@interface ViewController ()
@property(strong,nonatomic)CountDownTimeButton *countBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _countBtn=[[CountDownTimeButton alloc]initWithFrame:CGRectMake(100, 200, 100, 30) WithBtnTitle:@"点击获取验证码"];
    
    [_countBtn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_countBtn];
    
}
-(void)click
{
    [_countBtn startWithSecond:5];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
