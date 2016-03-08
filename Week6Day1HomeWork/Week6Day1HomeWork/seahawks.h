//
//  seahawks.h
//  Week6Day1HomeWork
//
//  Created by Lauren Spatz on 3/7/16.
//  Copyright © 2016 Lauren Spatz. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Seahawks <NSObject>
-(void) recieve;
-(void) toss;
-(void) win;
@optional
-(void) kick;
@end
