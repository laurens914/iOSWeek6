//
//  Student.h
//  ClassCloud
//
//  Created by Lauren Spatz on 3/9/16.
//  Copyright © 2016 Lauren Spatz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject 
{
    NSString *_firstName;
    NSString *_lastName;
    NSString *_email;
    NSString *_phone;
}
#pragma mark - Inilizers
-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                           email:(NSString *)email
                           phone:(NSString *)phone;


#pragma mark -Setters/Getters
-(void)setFirstName:(NSString *)firstName;
-(NSString *)firstName;

-(void)setLastName:(NSString *)lasttName;
-(NSString *)lastName;

-(void)setPhone:(NSString *)phone;
-(NSString *)phone;

-(void)setEmail:(NSString *)email;
-(NSString *)email;


@end

