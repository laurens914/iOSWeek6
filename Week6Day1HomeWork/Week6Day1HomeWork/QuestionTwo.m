//
//  QuestionTwo.m
//  Week6Day1HomeWork
//
//  Created by Lauren Spatz on 3/7/16.
//  Copyright © 2016 Lauren Spatz. All rights reserved.
//

#import "QuestionTwo.h"

@implementation QuestionTwo

+(void)checkObject:(id)testObject
{
    if ([testObject isKindOfClass:[NSNumber class]])
    {
        NSLog(@"%f", sqrt([testObject doubleValue]));
    }
    
    else if([testObject isKindOfClass:[NSString class]])
    {
        NSInteger stringLength = [testObject length];
        NSMutableString *reversedString = [[NSMutableString alloc]initWithCapacity:stringLength];
        for (NSInteger i = stringLength-1 ; i >= 0;i--)
        {
            char newString = [testObject characterAtIndex:i];
            [reversedString appendString:[NSString stringWithFormat:@"%c",newString]];
        }
        NSLog(@"%@", reversedString);
    }
    
    else if([testObject isKindOfClass:[NSArray class]])
    {
        NSMutableDictionary *types = [[NSMutableDictionary alloc]init];
        NSArray *array = (NSArray *)testObject;
        for (id object in array){
            NSString *classType = [[object class]description];
            NSNumber *numInClassType = types[classType];
            if (numInClassType == nil) {
                numInClassType = [[NSNumber alloc]initWithInt:1];
            } else {
                numInClassType =[[NSNumber alloc]initWithInt:[numInClassType intValue] +1];
            }
            types[classType] = numInClassType;
        }
        for(id classType in types){
            NSLog(@"%@ %@", classType, types[classType]);
        }
    }
}

@end
