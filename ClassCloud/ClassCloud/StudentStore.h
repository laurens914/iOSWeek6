//
//  StudentStore.h
//  ClassCloud
//
//  Created by Lauren Spatz on 3/9/16.
//  Copyright © 2016 Lauren Spatz. All rights reserved.
//

@import UIKit;
@class Student;

typedef void(^StudentStoreCompletion)();

@interface StudentStore : NSObject
+(instancetype)sharedStore;

-(NSInteger)count;
-(NSArray *)allStudents;
-(Student *)studentForIndexPath:(NSIndexPath *)indexPath;
-(void)add:(Student *)student;
-(void)remove:(Student *)student;
-(void)removeStudentAtIndexPath:(NSIndexPath *)indexPath;
-(void)save;


@end
