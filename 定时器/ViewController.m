//
//  ViewController.m
//  定时器
//
//

#import "ViewController.h"
#import "CountDownTimeButton.h"
#import "UIButton+CountDown.h"//gcd
@interface ViewController ()
@property(strong,nonatomic)CountDownTimeButton *countBtn;
@property (weak, nonatomic) IBOutlet UIButton *countdownBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _countBtn=[[CountDownTimeButton alloc]initWithFrame:CGRectMake(100, 100, 100, 30) WithBtnTitle:@"点击获取验证码"];
    
    [_countBtn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_countBtn];
    
}
-(void)click
{
    [_countBtn startWithSecond:5];
}
- (IBAction)countDownClick:(id)sender {
       [_countdownBtn startWithTime:5 title:@"获取验证码" countDownTitle:@"s" mainColor:[UIColor colorWithRed:84/255.0 green:180/255.0 blue:98/255.0 alpha:1.0f] countColor:[UIColor lightGrayColor]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
