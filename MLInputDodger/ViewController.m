//
//  ViewController.m
//  MLInputDodger
//
//  Created by molon on 15/7/27.
//  Copyright (c) 2015年 molon. All rights reserved.
//

#import "ViewController.h"
#import "UIView+MLInputDodger.h"
#import <MLKit/MLKit.h>


@interface TestView:UIView
@end

@implementation TestView

- (void)setFrame:(CGRect)frame
{
    DLOG(@"%@\n%@",NSStringFromCGRect(frame),FunctionCallerMessage());
    
    [super setFrame:frame];
}

@end

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextView *testView1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITapGestureRecognizer *tapG = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap)];
    [self.view addGestureRecognizer:tapG];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.view.shiftHeightAsDodgeViewForMLInputDodger = 50.0f;
    [self.view registerAsDodgeViewForMLInputDodger];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

#pragma mark - event
- (void)tap
{
    [self.view endEditing:YES];
}

@end