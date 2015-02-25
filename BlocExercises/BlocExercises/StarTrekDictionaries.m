//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary
{
    /* WORK HERE */
    NSString *faveDrink;
    
    if ([characterDictionary objectForKey:@"favorite drink"])
    {
        faveDrink = [characterDictionary valueForKey:@"favorite drink"];
    }
    
    else
    {
        faveDrink = nil;
    }
    
    return faveDrink;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray
{
    /* WORK HERE */
    NSArray *faveDrinkArray = [charactersArray valueForKey:@"favorite drink"];
    
    return faveDrinkArray;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary
{
    /* WORK HERE */
    NSMutableDictionary *mutDict = [characterDictionary mutableCopy];
    
    [mutDict enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop)
    {
        [mutDict setObject:obj forKey:@"quote"];
    }];
    
    return mutDict;
}

@end
