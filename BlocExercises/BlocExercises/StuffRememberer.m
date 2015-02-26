//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember
{
    /* WORK HERE */
    self.myArray = arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy
{
    /* WORK HERE */
    self.myArray = [arrayToCopy mutableCopy];
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember
{
    /* WORK HERE */
    self.myCGFloat = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember
{
    /* WORK HERE */
    if (self.myArray)
    {
        return self.myArray;
    }
    
    return nil;
}

- (NSMutableArray *) arrayYouShouldCopy
{
    /* WORK HERE */
    if (self.myArray)
    {
        return self.myArray;
    }
    
    return nil;
}

- (CGFloat) floatYouShouldRemember
{
    /* WORK HERE */
    if (self.myCGFloat)
    {
        return self.myCGFloat;
    }
    
    return NSNotFound;
}

@end