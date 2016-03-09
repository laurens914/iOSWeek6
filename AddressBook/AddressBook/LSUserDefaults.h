//
//  LSUserDefaults.h
//  AddressBook
//
//  Created by Lauren Spatz on 3/8/16.
//  Copyright © 2016 Lauren Spatz. All rights reserved.
//

#import <Foundation/Foundation.h>
static NSString * _Nonnull const kLSUserDefaultsDidUpdate = @"com.laurenspatz.kLSUserDefaultsDidUpdate";

@interface LSUserDefaults : NSObject


+(nonnull instancetype)sharedDefaults;
-(void)setObject:(nonnull id)object key:(nonnull NSString *) key;
-(nonnull id)objectForKey:(nonnull NSString *)key;
-(void)setPreferences:(nonnull NSMutableDictionary *)preferences;
-(nonnull NSMutableDictionary *)preferences;


-(void)reset;
@end
