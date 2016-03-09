//
//  ViewController.m
//  AddressBook
//
//  Created by Lauren Spatz on 3/8/16.
//  Copyright © 2016 Lauren Spatz. All rights reserved.
//

#import "ViewController.h"


@interface Generate : NSObject
+(NSArray *)generateCard;
@end


@implementation Generate
+(NSArray *)generateCard{
    
    NSMutableArray *cards = [[[NSMutableArray alloc]init]autorelease];
    NSArray *names = @[@"Russell Wilson", @"Steven Hauschka", @"Tyler Lockette", @"Richard Sherman", @"Doug Baldwin", @"Earl Thomas III"];
    NSArray *emails = @[@"russell@seahawks.com", @"hauchMoney@seahawks.com", @"Lockette@seahawks.com", @"shermy@seahawks.com", @"adb@seahawks.com",@"et3@seahawks.com"];
    NSArray *birthdays = @[@"11/29/1988", @"6/29/1985",@"9/28/1992", @"3/30/1988", @"9/21/1988", @"5/7/1989"];
    
    for (int index=0;index<names.count; index++){
//        int index = abs((int)arc4random()%6);
        NSString *name = names[index];
        NSString *email = emails[index];
        NSString *birthday = birthdays[index];
        AddressCard *addressCard = [[AddressCard alloc]initWith:name email:email birthday:birthday];
        [cards addObject:addressCard];
    }
    return cards;
}

@end

@interface ViewController ()

@property (retain, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray *addressBook;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.addressBook = [Generate generateCard];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)dealloc {
    [_tableView release];
    [super dealloc];
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.addressBook.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *addressCell = [self.tableView dequeueReusableCellWithIdentifier:@"addressCell" forIndexPath:indexPath];
    AddressCard *contactCard = self.addressBook[indexPath.row];
    
    NSLog(@"%@", contactCard.name);
    addressCell.textLabel.text = contactCard.name;
    addressCell.detailTextLabel.text = contactCard.email;
    return addressCell;
}

@end
