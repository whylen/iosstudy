//
//  ViewController.m
//  iosstudy
//
//  Created by lauwhylen on 2018/1/2.
//  Copyright © 2018年 com.ZNTech. All rights reserved.
//

#import "ViewController.h"
int tip=0;
@interface ViewController ()

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
    
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, 280, 100)];
    label.text = @"Hello World!It is a good idea, so, what do you want to know?hello, hello, hello, hello";
    
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
    
    [self.view addSubview:label];
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
