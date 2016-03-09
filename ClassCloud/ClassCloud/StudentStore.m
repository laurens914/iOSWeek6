//
//  StudentStore.m
//  ClassCloud
//
//  Created by Lauren Spatz on 3/9/16.
//  Copyright © 2016 Lauren Spatz. All rights reserved.
//

#import "StudentStore.h"
#import "NSURL+Additions.h"

@interface StudentStore()
@property (strong, nonatomic) NSMutableArray *students;
@end

@implementation StudentStore


+(instancetype)sharedStore
{
    static StudentStore *sharedStore = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedStore = [[[self class]alloc]init];
    });
    return sharedStore;
}

-(instancetype)init
{
    self =[super init];
    if (self) {
        _students = [NSKeyedUnarchiver unarchiveObjectWithData:[NSData dataWithContentsOfURL:[NSURL archiveURL]]];
        if (!_students){
            _students = [[NSMutableArray alloc]init];
        }
    }
    return self;
}

-(NSArray *)allStudents{
    return self.students;
}

-(NSInteger)count{
    return [self.students count];
}

-(Student *)studentForIndexPath:(NSIndexPath *)indexPath{
    return [self.students objectAtIndex:indexPath.row];
}
-(void)add:(Student *)student
{
    [self.students addObject:student];
    [self save];
}
-(void)remove:(Student *)student
{
    [self.students removeObject:student];
    [self save];
}
-(void)removeStudentAtIndexPath:(NSIndexPath *)indexPath
{
    if (self.students.count >= indexPath.row) {
        [self.students removeObjectAtIndex:indexPath.row];
        [self save];
    }
}
-(void)save
{
    [NSKeyedArchiver archiveRootObject:self.students toFile:[[NSURL archiveURL]path]];
}
















@end
