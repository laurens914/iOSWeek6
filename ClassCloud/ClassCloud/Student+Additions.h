//
//  Student+Additions.h
//  ClassCloud
//
//  Created by Lauren Spatz on 3/9/16.
//  Copyright © 2016 Lauren Spatz. All rights reserved.
//

#import "Student.h"
typedef void(^StudentCompletion) (NSArray *students);
@interface Student (Additions)
-(BOOL)isValidStudent;
+(void)studentsFromRecords:(NSArray *)records completion:(StudentCompletion)completion;
@end
