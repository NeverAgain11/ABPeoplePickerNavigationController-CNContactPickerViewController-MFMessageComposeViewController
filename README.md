# ABPeoplePickerNavigationController-CNContactPickerViewController-MFMessageComposeViewController
封装调用系统通讯录，获取联系人信息；适配 iOS9；发送短信（群发/单发 指定信息）

#### 很多项目中会需要调用系统通讯录获取联系人信息，这需要导入框架 - 指定代理、服从协议 - 实现代理方法，没有多少技术含量，却需要不少代码，而且 iOS9之后还引入了新的框架，如果完美适配，更增加了许多代码。我现在开发的一款房地产相关的 APP，其中多处用到这个功能，所以封装了一下。

```objc
	@property (nonatomic, strong) JHSysContactsUtil *contactsUtil;
	
    self.contactsUtil = [JHSysContactsUtil new];
    
    // 获取联系人信息
    [self.contactsUtil callContactsHandler:^(JHContactModel *contact) {
        NSLog(@"@@~~name : %@, phoneNumber: %@", contact.name, contact.phoneNumber);
    }];
```

##### 群发/单发 指定信息

```objc
    // 发短信
    [self.contactsUtil sendContacts:@[@"10010"] message:@"This is a test" completion:^(JHMessageComposeResult result) {
        NSLog(@"@@~~d : %ld", (long)result);
    }];

```

#### 代码中有详细的注释
![](/Users/liuhen/Pictures/FN2V63AD2J.com.tencent.ScreenCapture2/QQ20160829-0@2x.png)

#### 欢迎到 [我的博客](http://www.jianshu.com/writer#/notebooks/5712425) 中留言交流~


