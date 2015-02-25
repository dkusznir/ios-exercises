//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number
{
    /* WORK HERE */
    int intValue = [number intValue];
    int doubleIntValue = (intValue * 2);
    
    NSNumber *doubleNumber = [NSNumber numberWithInt:doubleIntValue];
    
    return doubleNumber;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber
{
    /* WORK HERE */
    NSArray *numbersArray = [[NSArray alloc] init];
    
    NSInteger minNumber = (number < otherNumber) ? number : otherNumber;
    NSInteger maxNumber = (number > otherNumber) ? number : otherNumber;
    
    while (minNumber <= maxNumber)
    {
        numbersArray = [numbersArray arrayByAddingObject:[NSNumber numberWithInteger:minNumber]];
        minNumber++;
    }
    
    return numbersArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers
{
    /* WORK HERE */
    
    if (arrayOfNumbers.count == 0)
    {
        NSLog(@"Empty Array!");
    }
    
    else
    {
        __block NSNumber *findLowNumber = [arrayOfNumbers objectAtIndex:0];
        
        [arrayOfNumbers enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            if ([obj integerValue] < [findLowNumber integerValue])
            {
                findLowNumber = obj;
            }

        }];
    
        NSInteger lowestNumber = [findLowNumber integerValue];
    
        return lowestNumber;
    }
    
    return 0;
}
@end
