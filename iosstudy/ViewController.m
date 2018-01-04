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
    
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, 280, 30)];
    label.text = @"Hello World";
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
