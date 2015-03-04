//
//  TestTableViewVC.m
//  YouZhi
//
//  Created by Arvin on 15/3/4.
//  Copyright (c) 2015年 com.roroge. All rights reserved.
//

#import "TestTableViewVC.h"
#import "TableViewCell.h"
#import "TestManager.h"
#import "Common.h"

#define Identifier    @"Identifier"

@interface TestTableViewVC () <UITableViewDataSource, UITableViewDelegate, UIAlertViewDelegate>

@property (strong, nonatomic) IBOutlet UIButton *clearBtn;
@property (strong, nonatomic) IBOutlet UITableView *myTable;
//@property (strong, nonatomic) NSArray *dataArray;
@property (strong, nonatomic) NSMutableArray *dataArray;
@property (strong, nonatomic) IBOutlet UILabel *emptyLabel;

@end

@implementation TestTableViewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
//    self.view.backgroundColor = RGB(230, 230, 230);
    
    [self initView];
}

- (void)initView {

    NSDictionary *testDataOne = [NSDictionary dictionaryWithObjectsAndKeys:@"001",@"id",@"la",@"title",@"么么",@"name", nil];
    NSDictionary *testDataTwo = [NSDictionary dictionaryWithObjectsAndKeys:@"002",@"id",@"la",@"title",@"mjng",@"name", nil];
    NSDictionary *testDataThree = [NSDictionary dictionaryWithObjectsAndKeys:@"003",@"id",@"la",@"title",@"攻击恶魔呢",@"name", nil];
    NSDictionary *testDataFour = [NSDictionary dictionaryWithObjectsAndKeys:@"004",@"id",@"la",@"title",@"么多发点",@"name", nil];
    NSDictionary *testDataFive = [NSDictionary dictionaryWithObjectsAndKeys:@"005",@"id",@"la",@"title",@"djmgole",@"name", nil];
    NSDictionary *testDataSix = [NSDictionary dictionaryWithObjectsAndKeys:@"006",@"id",@"la",@"title",@"就感觉",@"name", nil];
    
//    self.dataArray = @[testDataOne,testDataTwo,testDataThree,testDataFour,testDataFive,testDataSix];
        self.dataArray = [NSMutableArray arrayWithObjects:testDataOne,testDataTwo,testDataThree,testDataFour,testDataFive,testDataSix, nil];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.dataArray count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = (TableViewCell *)[tableView dequeueReusableCellWithIdentifier:Identifier ];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"TableViewCell" owner:self options:nil] lastObject];
        cell.backgroundColor = RGB(230, 230, 230);
    }
    NSDictionary *tempDic = [self.dataArray objectAtIndex:indexPath.row];
    TestObj *obj = [[TestManager sharedInstance] convertDicToTestObj:tempDic];
    [cell configCellWithObj:obj];
    
    return cell;
}

//- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
//    return 10;
//}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)clearBtnClick:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:@"确定清除吗？" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    [alert show];
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 0) {
        return;
    }else {
        [self handleEmptyView];
    }
}

- (void)handleEmptyView {
    [self.dataArray removeAllObjects];
    [self.myTable reloadData];
    self.clearBtn.hidden = YES;
    self.emptyLabel.hidden = NO;
}

@end
