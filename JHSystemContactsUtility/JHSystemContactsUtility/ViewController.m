//
//  ViewController.m
//  JHSystemContactsUtility
//
//  Created by 流痕 on 16/8/18.
//  Copyright © 2016年 FLZC. All rights reserved.
//

#import "ViewController.h"
#import "JHSysContactsUtil.h"

@interface ViewController ()
@property (nonatomic, strong) JHSysContactsUtil *contactsUtil;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    self.contactsUtil = [JHSysContactsUtil new];
    
    // 获取联系人信息
    [self.contactsUtil callContactsHandler:^(JHContactModel *contact) {
        NSLog(@"@@~~name : %@, phoneNumber: %@", contact.name, contact.phoneNumber);
    }];
    
//    // 发短信
//    [self.contactsUtil sendContacts:@[@"10010"] message:@"This is a test" completion:^(JHMessageComposeResult result) {
//        NSLog(@"@@~~d : %ld", (long)result);
//    }];
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
