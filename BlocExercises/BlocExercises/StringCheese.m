//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName
{
    /* WORK HERE */
    NSString *favorite = cheeseName;
    NSString *fullSentence = [NSString stringWithFormat:@"My favorite cheese is %@.", favorite];
    return fullSentence;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName
{
    /* WORK HERE */
    NSString *name = cheeseName;
    NSRange cheeseRange = [name rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];

    if (cheeseRange.location == NSNotFound)
    {
        return name;
    }
    
    else
    {
        NSString *removeCheeseName = [name stringByReplacingCharactersInRange:cheeseRange withString:@""];
        return removeCheeseName;
    }
 
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount
{
    if (cheeseCount == 1)
    {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        NSString *cheeseCountString = @"1 cheese";
        return cheeseCountString;
    }
    
    else
    {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        NSUInteger cheeseCountInt = cheeseCount;
        NSString *cheeseCountString = [NSString stringWithFormat:@"%ld cheeses", (long)cheeseCountInt];
        return cheeseCountString;
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    
}

@end
