//
//  ViewController.m
//  iosstudy
//
//  Created by lauwhylen on 2018/1/2.
//  Copyright © 2018年 com.ZNTech. All rights reserved.
//

#import "ViewController.h"
int tip=0;
@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController

+(void)initialize {
    [super initialize];
    NSLog(@"%d initialize", ++tip);
}

-(instancetype)init {
    self = [super init];
    if (self) {
        
    }
    NSLog(@"%d init", ++tip);
    return self;
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        
    }
    NSLog(@"%d initWithCoder", ++tip);
    return self;
}

-(void)awakeFromNib {
    [super awakeFromNib];
    NSLog(@"%d awakeFromNib", ++tip);
}

-(void)loadView {
    [super loadView];
    NSLog(@"%d loadView", ++tip);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%d viewDidLoad", ++tip);
    
    // UILabel
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, 280, 100)];
    label.text = @"Hello World!It is a good idea, so, what do you want to know?hello, hello, hello";
    // 设置背景颜色
    label.backgroundColor = [UIColor redColor];
    // 设置字体和字号
    label.font = [UIFont systemFontOfSize:23];
    // 设置字体颜色
    label.textColor = [UIColor whiteColor];
    // 设置对齐模式
    label.textAlignment = NSTextAlignmentCenter;
    // 设置阴影颜色
    label.shadowColor = [UIColor greenColor];
    // 设置阴影的偏移量
    label.shadowOffset = CGSizeMake(1, 1);
    // 设置多行显示
    label.numberOfLines = 0;
    // 设置截断模式
    label.lineBreakMode = NSLineBreakByTruncatingTail;
    
    
    // UIButton
    UIButton * button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(20, 220, 280, 30);
    [button setTitle:@"点我一下" forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"image"] forState:UIControlStateNormal];
    [button setTitleEdgeInsets:UIEdgeInsetsMake(0, 30, 0, 0)];
    [button addTarget:self action:@selector(changeColor) forControlEvents:UIControlEventTouchUpInside];
    
    
    // UITextField
    UITextField * textField = [[UITextField alloc] initWithFrame:CGRectMake(20, 270, 280, 30)];
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.placeholder = @"请输入文字";
    textField.delegate = self;
    
    
    // UISwitch
    UISwitch * swi = [[UISwitch alloc] initWithFrame:CGRectMake(20, 320, 280, 30)];
    swi.onTintColor = [UIColor greenColor];
    swi.tintColor = [UIColor redColor];
    swi.thumbTintColor = [UIColor orangeColor];
    [swi addTarget:self action:@selector(changeSwi:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:label];
    [self.view addSubview:button];
    [self.view addSubview:textField];
    [self.view addSubview:swi];
}

-(void)changeColor {
    self.view.backgroundColor = [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:arc4random()%255/255.0];
}

-(void)changeSwi: (UISwitch *)swi {
    if (swi.isOn) {
        self.view.backgroundColor = [UIColor redColor];
    } else {
        self.view.backgroundColor = [UIColor whiteColor];
    }
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(nonnull NSString *)string {
    if (string.length > 0) {
        if ([string characterAtIndex:0] < '0' || [string characterAtIndex:0] > '9') {
            NSLog(@"请输入数字");
            return NO;
        }
        if (textField.text.length + string.length > 11) {
            NSLog(@"超过11位啦！");
            return NO;
        }
        return YES;
    } else {
        return NO;
    }
}
 
-(void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"%d viewDidLayoutSubviews", ++tip);
}

-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    NSLog(@"%d didReceiveMemoryWarning", ++tip);
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"%d viewWillAppear", ++tip);
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"%d viewDidAppear", ++tip);
}

-(void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"%d viewWillDisappear", ++tip);
}

-(void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"%d viewDidDisappear", ++tip);
}

-(void)dealloc {
    NSLog(@"%d dealloc", ++tip);
}

@end
