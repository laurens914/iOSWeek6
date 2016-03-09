//
//  Student+Additions.m
//  ClassCloud
//
//  Created by Lauren Spatz on 3/9/16.
//  Copyright © 2016 Lauren Spatz. All rights reserved.
//

#import "Student+Additions.h"
#import "NSString+Additions.h"

@implementation Student (Additions)

-(BOOL)isValidStudent
{
    if (self.firstName.length >0 && self.lastName.length >0 && self.email.isValidEmailAddress){
        return YES;
    }
    return NO;
}
@end
