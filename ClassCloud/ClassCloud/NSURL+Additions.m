//
//  NSURL+Additions.m
//  ClassCloud
//
//  Created by Lauren Spatz on 3/9/16.
//  Copyright © 2016 Lauren Spatz. All rights reserved.
//

#import "NSURL+Additions.h"

@implementation NSURL (Additions)


+(NSURL*)docuementsDirectory
{
    return [[[NSFileManager defaultManager]URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask]firstObject];    
    return nil;
}

+(NSURL *)archiveURL
{
    return [[self docuementsDirectory]URLByAppendingPathComponent:@"studnetDb"];
}
@end
