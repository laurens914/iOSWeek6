//
//  AddressCard.m
//  AddressBook
//
//  Created by Lauren Spatz on 3/8/16.
//  Copyright © 2016 Lauren Spatz. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard

-(instancetype)initWith:(NSString *)name email:(NSString *)email birthday:(NSString *)birthday
{
    self = [super init];
    if(self){
            _name = name;
            _email = email;
            _birthday = birthday;
    }
    return self;
}
-(void)setName:(NSString *)name
{
    if(_name != name){
        _name = name;
    }
    [name retain];
}
-(NSString *)name
{
    return _name;
}
-(void)setEmail:(NSString *)email
{
    if (_email != email){
        _email = email;
    }
    [email retain];
}
-(NSString *)email
{
    return _email;
}
-(void)setBirthday:(NSString *)birthday
{
    if (_birthday != birthday){
        _birthday = birthday;
    }
    [birthday retain];
    
}
-(NSString *)birthday
{
    return _birthday;
}

-(void)dealloc{
    [_name release];
    [_email release];
    [_birthday release];
    _name = nil;
    _email = nil;
    _birthday = nil;
    [super dealloc];
    
}

@end
