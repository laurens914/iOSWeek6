//
//  AddViewController.m
//  ClassCloud
//
//  Created by Lauren Spatz on 3/9/16.
//  Copyright © 2016 Lauren Spatz. All rights reserved.
//

#import "AddViewController.h"
#import "Student.h"
#import "StudentStore.h"
#import "Student+Additions.h"

@interface AddViewController ()
@property (strong, nonatomic) Student *student;
@property (weak, nonatomic) IBOutlet UITextField *firstNameField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameFeild;
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextField *phoneField;

- (IBAction)saveButtonSelected:(id)sender;
@end

@implementation AddViewController

+(NSString *)identifier{
    return NSStringFromClass(self);
}
-(Student *)student
{
    if(!_student)
    {
        _student = [[Student alloc]initWithFirstName:@"" lastName:@"" email:@"" phone:@""];
    }
    return _student;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)showAlertView
{
    NSString *title = @"Error";
    NSString *message = @"please fill out required informaion";
    UIAlertController *controller = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    [controller addAction:okAction];
    [self presentViewController:controller animated:YES completion:nil];
    
}


- (IBAction)saveButtonSelected:(id)sender {
    
    self.student.firstName = self.firstNameField.text;
    self.student.lastName = self.lastNameFeild.text;
    self.student.email = self.emailField.text;
    self.student.phone = self.phoneField.text;
    
    if (self.student.isValidStudent){
        [[StudentStore sharedStore]add:self.student];
        [self.navigationController popViewControllerAnimated:YES];
    }
}
@end
