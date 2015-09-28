# SendVerificationCode_CountDownTimeButton
点击发送验证码，计时器开始倒计时，在此期间不能点击按钮


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

