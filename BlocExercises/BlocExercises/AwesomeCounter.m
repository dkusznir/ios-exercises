//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber
{
    /* WORK HERE */
    
    NSString *stringWithNums = @"";
    NSInteger maxInt = (number > otherNumber) ? number : otherNumber;
    NSInteger minInt = (number < otherNumber) ? number : otherNumber;
    
    if (maxInt != minInt)
    {
        while (minInt <= maxInt)
        {
            stringWithNums = [stringWithNums stringByAppendingString:[NSString stringWithFormat:@"%ld", (long) minInt]];
            minInt++;
        }
    }
    
    else
    {
        stringWithNums = [NSString stringWithFormat:@"%ld", (long) number];
        NSLog(@"%ld", minInt);
    }
        
    return stringWithNums;
}

@end
