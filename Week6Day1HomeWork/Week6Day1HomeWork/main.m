//
//  main.m
//  Week6Day1HomeWork
//
//  Created by Lauren Spatz on 3/7/16.
//  Copyright © 2016 Lauren Spatz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Words.h"
#import "Person.h"
#import "QuestionTwo.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        NSString *sentence = @"This is a test String";
        NSArray *stringArray = [sentence setArray];
        NSLog(@"%@", stringArray);
        
        Employee *employee = [[Employee alloc]initWith:@"Russell" andLastName:@"Wilson" andJobTitle:@"Quarterback"];
        NSLog(@"%@ %@ is a %@", [employee firstName], [employee lastName], [employee jobTitle]);
              
        NSNumber *testNumber = [NSNumber numberWithInt:4];
        NSArray *testArray = @[@"Wilson", @3, @"Hauschka", @4,@"Baldwin", @89];
        
        [QuestionTwo checkObject:sentence];
        [QuestionTwo checkObject:testNumber];
        [QuestionTwo checkObject:testArray];
        
        
    }
    return 0;
}
