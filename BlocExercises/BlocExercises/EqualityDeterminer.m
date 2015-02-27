//
//  EqualityDeterminer.m
//  BlocExercises
//
//  Created by Aaron Brager on 6/10/14.
//
//

#import "EqualityDeterminer.h"

@implementation EqualityDeterminer

- (BOOL) string:(NSString *)string1 isTheSameAsString:(NSString *)string2
{
    /* WORK HERE */
    BOOL checkIsEqual = [string1 isEqualToString:string2] ? YES : NO;
    
    return checkIsEqual;
    
}

- (BOOL) number:(NSNumber *)number1 isTheSameAsNumber:(NSNumber *)number2
{
    /* WORK HERE */
    BOOL checkIsEqual = [number1 isEqualToNumber:number2] ? YES : NO;
    
    return checkIsEqual;
}

- (BOOL) integer:(NSInteger)integer1 isGreaterThan:(NSInteger)integer2
{
    /* WORK HERE */
    BOOL checkIsGreaterThan = (integer1 > integer2) ? YES : NO;
    
    return checkIsGreaterThan;
}

@end
