//
//  Person.h
//  Week6Day1HomeWork
//
//  Created by Lauren Spatz on 3/7/16.
//  Copyright © 2016 Lauren Spatz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_firstName;
    NSString *_lastName;
}
-(instancetype)initWith:(NSString *)firstName lastName:(NSString *)lastName;
-(void)setFirstName:(NSString *)firstName;
-(NSString *)firstName;
-(void)setLastName:(NSString *)lastName;
-(NSString *)lastName;
@end

@interface Employee : Person
{
    NSString *_jobTitle;
}
-(instancetype)initWith:(NSString *)firstName andLastName:(NSString *)lastName andJobTitle:(NSString *)jobTitle;
-(void)setJobTitle:(NSString *)jobTitle;
-(NSString *)jobTitle;
@end
