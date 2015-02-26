//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString
{
    /* WORK HERE */
    NSArray *stringToArray = [characterString componentsSeparatedByString:@";"];
    
    return stringToArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray
{
    /* WORK HERE */
    NSString *arrayToString = [characterArray componentsJoinedByString:@";"];
    
    return arrayToString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray
{
    /* WORK HERE */
    NSArray *sortedArray;
    NSSortDescriptor *sortArray = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    sortedArray = [characterArray sortedArrayUsingDescriptors:@[sortArray]];
    
    return sortedArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray
{
    /* WORK HERE */
    BOOL result;
    NSPredicate *predicateTest = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    NSArray *allWorfs = [characterArray filteredArrayUsingPredicate:predicateTest];
    
    if (allWorfs.count == 0)
    {
        result = NO;
    }
    
    else
    {
        result = YES;
    }
    return result;
}

@end
