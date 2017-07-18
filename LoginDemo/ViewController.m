//
//  ViewController.m
//  LoginDemo
//
//  Created by wangrui on 2017/7/18.
//  Copyright © 2017年 codeteenager. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //用户名提示
    _lbUsername=[[UILabel alloc] init];
    _lbUsername.frame=CGRectMake(20, 60, 80, 40);
    _lbUsername.text=@"用户名：";
    _lbUsername.font=[UIFont systemFontOfSize:20];
    _lbUsername.textAlignment=NSTextAlignmentLeft;
    //用户密码提示
    _lbPassword=[[UILabel alloc] init];
    _lbPassword.frame=CGRectMake(20, 140, 80, 40);
    _lbPassword.text=@"密码：";
    _lbPassword.font=[UIFont systemFontOfSize:20];
    _lbPassword.textAlignment=NSTextAlignmentLeft;
    //用户名输入框
    _tfUsername=[[UITextField alloc] init];
    _tfUsername.frame=CGRectMake(120, 60, 180, 40);
    _tfUsername.placeholder=@"请输入用户名";
    _tfUsername.borderStyle=UITextBorderStyleRoundedRect;
    //密码输入框
    _tfPassword=[[UITextField alloc] init];
    _tfPassword.frame=CGRectMake(120, 140, 180, 40);
    _tfPassword.placeholder=@"请输入密码";
    _tfPassword.borderStyle=UITextBorderStyleRoundedRect;
    _tfPassword.secureTextEntry=YES;
    //登录和注册按钮
    _btLogin=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btLogin.frame=CGRectMake(120, 300, 80, 40);
    [_btLogin setTitle:@"登录" forState:UIControlStateNormal];
    [_btLogin addTarget:self action:@selector(pressLogin) forControlEvents:UIControlEventTouchUpInside];
    _btRegister=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btRegister.frame=CGRectMake(120, 360, 80, 40);
    [_btRegister setTitle:@"注册" forState:UIControlStateNormal];
    [_btRegister addTarget:self action:@selector(pressRegister) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_lbUsername];
    [self.view addSubview:_lbPassword];
    [self.view addSubview:_tfUsername];
    [self.view addSubview:_tfPassword];
    [self.view addSubview:_btLogin];
    [self.view addSubview:_btRegister];

}
//登录事件函数
- (void)pressLogin{
    NSString* username=@"admin";
    NSString* password=@"admin";
    NSString* strTextName=_tfUsername.text;
    NSString* strTextPassword=_tfPassword.text;
    if([username isEqualToString:strTextName] && [password isEqualToString:strTextPassword]){
        NSLog(@"登录成功");
        UIAlertView* alView=[[UIAlertView alloc] initWithTitle:@"提示" message:@"密码输入正确" delegate:nil cancelButtonTitle:@"确认" otherButtonTitles:nil];
        [alView show];
    }else{
        UIAlertView* alView=[[UIAlertView alloc] initWithTitle:@"提示" message:@"密码输入错误" delegate:nil cancelButtonTitle:@"确认" otherButtonTitles:nil];
        [alView show];
    }

}
//注册事件函数
- (void)pressRegister{

}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //回收键盘对象
    [_tfUsername resignFirstResponder];
    [_tfPassword resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
