//
//  LSUserDefaults.m
//  AddressBook
//
//  Created by Lauren Spatz on 3/8/16.
//  Copyright © 2016 Lauren Spatz. All rights reserved.
//

#import "LSUserDefaults.h"

@interface LSUserDefaults ()
{
    NSMutableDictionary *_preferences;
}
@end


@implementation LSUserDefaults

+(nonnull instancetype)sharedDefaults
{
    static LSUserDefaults *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[[self class]alloc]init];
    });
    
    
    return shared;
}
-(instancetype)init
{
    self = [super init];
    if (self) {
        _preferences = [self setupPreferences];
    }
    return self;
}
-(void)setObject:(id)object key:(NSString *)key
{
    [self.preferences setObject:object forKey:key];
    [self sync];
}

-(nonnull id)objectForKey:(NSString *)key
{
    return [self.preferences objectForKey:key];
}
-(void)setPreferences:(NSMutableDictionary *)preferences
{
    _preferences = preferences;
}
-(NSMutableDictionary *)preferences
{
    return _preferences;
}

-(void)reset{
    [[NSFileManager defaultManager]removeItemAtURL:[self preferencesURL] error:nil];
    [self sync];
}

#pragma mark - Helper Functions

-(void) sync
{
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self.preferences options:NSJSONWritingPrettyPrinted error:&error];
    if (!error &&jsonData){
        if([jsonData writeToURL:[self preferencesURL] atomically:YES]){
            [[NSNotificationCenter defaultCenter]postNotificationName:kLSUserDefaultsDidUpdate object:nil];
        }
    }
}

-(NSMutableDictionary *)setupPreferences
{
    NSError *error;
    NSData *jsonData = [NSData dataWithContentsOfURL:[self preferencesURL]];
    
    if (jsonData)
    {
        NSMutableDictionary *json= [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&error];
        if (!error && json)
        {
            return json;
        }
    }
    return [NSMutableDictionary new];
}

-(NSURL *)documentDirectory
{
    return [[[NSFileManager defaultManager]URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask]firstObject];
}

-(NSURL *)preferencesURL
{
    return[[self documentDirectory]URLByAppendingPathComponent:@"preferences.json"];
}

@end
