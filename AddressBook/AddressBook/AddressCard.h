//
//  AddressCard.h
//  AddressBook
//
//  Created by Lauren Spatz on 3/8/16.
//  Copyright © 2016 Lauren Spatz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject
{
    NSString *_name;
    NSString *_email;
    NSString *_birthday;
}

-(void)setName:(NSString *)name;
-(NSString *)name;
-(void)setEmail:(NSString *)email;
-(NSString *)email;
-(void)setBirthday:(NSString *)birthday;
-(NSString *)birthday;
-(instancetype)initWith:(NSString *)name email:(NSString *)email birthday:(NSString *)birthday;
@end
