
//
//  HomeViewController.m
//  YouZhi
//
//  Created by Arvin on 15/3/3.
//  Copyright (c) 2015年 com.roroge. All rights reserved.
//

#import "HomeViewController.h"
#import "KissAssVC.h"
#import "TestObjVC.h"

@interface HomeViewController ()
@property (strong, nonatomic) IBOutlet UIButton *codeBtn;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)codeBtnClick:(id)sender {
//    KissAssVC *kissAssVC = [[KissAssVC alloc] initWithNibName:@"KissAssVC" bundle:nil];
//    [self presentViewController:kissAssVC animated:YES completion:nil];
    
    TestObjVC *testObjVC = [[TestObjVC alloc] initWithNibName:@"TestObjVC" bundle:nil];
    [self presentViewController:testObjVC animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
