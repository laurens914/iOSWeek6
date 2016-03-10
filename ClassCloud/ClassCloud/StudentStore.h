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
-(void)addStudentsFromCloudKit:(NSArray *)students;
-(NSInteger)count;
-(NSArray *)allStudents;
-(Student *)studentForIndexPath:(NSIndexPath *)indexPath;
-(void)add:(Student *)student completion:(StudentStoreCompletion)completion;
-(void)remove:(Student *)student completion:(StudentStoreCompletion)completion;
-(void)removeStudentAtIndexPath:(NSIndexPath *)indexPath completion:(StudentStoreCompletion)completion;
-(void)save;


@end
