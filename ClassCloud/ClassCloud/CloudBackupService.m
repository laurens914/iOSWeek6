//
//  CloudBackupService.m
//  ClassCloud
//
//  Created by Lauren Spatz on 3/9/16.
//  Copyright © 2016 Lauren Spatz. All rights reserved.
//

#import "CloudBackupService.h"

static NSString *const StudentRecordType = @"Student";
@interface CloudBackupService ()
@property (strong, nonatomic) CKContainer *container;
@property (strong, nonatomic) CKDatabase *database;

@end

@implementation CloudBackupService

+(instancetype)sharedService{
    static CloudBackupService *sharedService = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
    sharedService = [[[self class]alloc]init];
    });
    
    return sharedService;
}

-(instancetype)init{
    self = [super init];
    if (self){
        _container =[CKContainer defaultContainer];
        _database = [_container privateCloudDatabase];
    }
    return self;
}

-(void)enqueueOperation:(CloudBackupServiceCompletion)completion{
    [self  enqueueOperation:CloudOperationRetrieve student:nil completion:completion];
}
     -(void) enqueueOperation:(CloudOperation)operation student:(Student *)student completion:(CloudBackupServiceCompletion)completion{
         if (operation == CloudOperationSave){
             [self save:student completion:completion ];
         }
         if (operation == CloudOperationRetrieve){
             [self retrieve:completion];
         }
         if (operation == CloudOperationDelete){
             [self delete:student completion:completion];
         }
     }


-(void)retrieve:(CloudBackupServiceCompletion)completion
{
    
}

-(void)save:(Student*)student completion:(CloudBackupServiceCompletion)completion
{
    
}

-(void)delete:(Student*)student completion:(CloudBackupServiceCompletion)completion
{
    
}
@end
