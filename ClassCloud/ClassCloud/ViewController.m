//
//  ViewController.m
//  ClassCloud
//
//  Created by Lauren Spatz on 3/9/16.
//  Copyright © 2016 Lauren Spatz. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"
#import "StudentStore.h"
#import "CloudBackupService.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray *datasource;

@end

@implementation ViewController

-(NSString *) firstName
{
    return nil;
}

-(void)updateStudents{
    __weak typeof(self) weakSelf = self;
    [[CloudBackupService sharedService]enqueueOperation:^(BOOL success, NSArray *students) {
        [[StudentStore sharedStore]addStudentsFromCloudKit:students];
        [weakSelf.tableView reloadSections:[NSIndexSet indexSetWithIndex:0]withRowAnimation:UITableViewRowAnimationFade];
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];

}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma Mark -TableView

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[StudentStore sharedStore]count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *studentCell = [tableView dequeueReusableCellWithIdentifier:@"StudentCell" forIndexPath:indexPath];
    Student *student = [[StudentStore sharedStore]studentForIndexPath:indexPath];
    studentCell.textLabel.text = student.firstName;
    studentCell.detailTextLabel.text = [NSString stringWithFormat:@"Phone: %@", student.phone];
    return studentCell;
}

@end
