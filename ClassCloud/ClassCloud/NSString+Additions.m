//
//  NSString+Additions.m
//  ClassCloud
//
//  Created by Lauren Spatz on 3/9/16.
//  Copyright © 2016 Lauren Spatz. All rights reserved.
//

#import "NSString+Additions.h"

@implementation NSString (Additions)


- (BOOL)isValidEmailAddress;
{
    return [[NSPredicate predicateWithFormat:@"SELF MATCHES %@", @"^.+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2}[A-Za-z]*$"]evaluateWithObject:self];
}
@end
