//
//  ViewController.h
//  LoginDemo
//
//  Created by wangrui on 2017/7/18.
//  Copyright © 2017年 codeteenager. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    @public
    //用户名提示label
    UILabel* _lbUsername;
    //密码提示label
    UILabel* _lbPassword;
    //用户名输入框
    UITextField* _tfUsername;
    //密码输入框
    UITextField* _tfPassword;
    //登录按钮
    UIButton* _btLogin;
    //注册按钮
    UIButton* _btRegister;
}

@end

