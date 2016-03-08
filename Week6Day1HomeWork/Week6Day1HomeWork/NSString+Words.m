//
//  NSString+Words.m
//  Week6Day1HomeWork
//
//  Created by Lauren Spatz on 3/7/16.
//  Copyright © 2016 Lauren Spatz. All rights reserved.
//

#import "NSString+Words.h"

@implementation NSString (Words)
-(NSArray *)setArray
{
    NSArray * array = [self componentsSeparatedByString:@" " ];
    
    return array;
}





@end
