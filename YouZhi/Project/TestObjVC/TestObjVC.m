//
//  TestObjVC.m
//  YouZhi
//
//  Created by Arvin on 15/3/4.
//  Copyright (c) 2015年 com.roroge. All rights reserved.
//

#import "TestObjVC.h"
#import "TestManager.h"

@interface TestObjVC ()

//@property (strong, nonatomic) NSDictionary *testData;
@property (strong, nonatomic) IBOutlet UIButton *showBtn;
@property (strong, nonatomic) IBOutlet UILabel *valueLabel;
@property (strong, nonatomic) TestObj *obj;

@end

@implementation TestObjVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUp];
}

- (void)setUp {
    NSDictionary *testData = [NSDictionary dictionaryWithObjectsAndKeys:@"001",@"id",@"la",@"title",@"么么",@"name", nil];
    self.obj = [[TestManager sharedInstance] convertDicToTestObj:testData];
}

- (IBAction)showBtnClick:(id)sender {
    self.valueLabel.text = self.obj.tId;
}

@end
