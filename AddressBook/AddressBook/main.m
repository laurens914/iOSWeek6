//
//  main.m
//  AddressBook
//
//  Created by Lauren Spatz on 3/8/16.
//  Copyright © 2016 Lauren Spatz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "AddressCard.h"


//@interface Generate : NSObject
//+(id)generateCard;
//@end
//
//
//@implementation Generate
//+(id)generateCard{
//    
//    NSMutableArray *cards = [[[NSMutableArray alloc]init]autorelease];
//    NSArray *firstNames = @[@"Russell", @"Steven", @"Tyler", @"Richard", @"Doug", @"Earl"];
//    NSArray *lastNames = @[@"Wilson", @"Hauschka", @"Lockette", @"Sherman", @"Baldwin", @"Thomas III"];
//    NSArray *emails = @[@"russell@seahawks.com", @"hauchMoney@seahawks.com", @"Lockette@seahawks.com", @"shermy@seahawks.com", @"adb@seahawks.com",@"et3@seahawks.com"];
//    NSArray *birthdays = @[@"11/29/1988", @"6/29/1985",@"9/28/1992", @"3/30/1988", @"9/21/1988", @"5/7/1989"];
//    
//    for (int i=0;i<firstNames.count; i++){
//        int index = abs((int)arc4random()%6);
//        NSString *name = [NSString stringWithFormat:@"%@ %@", [firstNames objectAtIndex:index], [lastNames objectAtIndex:index]];
//        NSString *email = emails[index];
//        NSString *birthday = birthdays[index];
//        AddressCard *addressCard = [[AddressCard alloc]initWith:(NSString *)name email:(NSString *)email birthday:(NSString *)birthday];
//        [cards addObject:addressCard];
//    }
//    return [NSArray arrayWithObject:cards];
//}
//
//@end

int main(int argc, char * argv[]) {
    @autoreleasepool {
//        NSArray *cards = [Generate generateCard];
//        NSLog(@"%@", cards);
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
