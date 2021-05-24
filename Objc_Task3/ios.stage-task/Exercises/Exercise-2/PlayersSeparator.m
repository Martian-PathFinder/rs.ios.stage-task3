#import "PlayersSeparator.h"

@implementation PlayersSeparator

- (NSInteger)dividePlayersIntoTeams:(NSArray<NSNumber *>*)ratingArray {
    NSInteger player1, player2, player3;
    NSInteger teams = 0;
    
    for (int i = 0; i < ratingArray.count; i++) {
      player1 = [ratingArray[i] integerValue];
        for (int j = i + 1; j < ratingArray.count; j++) {
            if ( [ratingArray[i] integerValue] < [ratingArray[j] integerValue] || [ratingArray[i] integerValue] > [ratingArray[j] integerValue]) {
                player2 = [ratingArray[j] integerValue];
                for (int k = j + 1; k < ratingArray.count; k++) {
                    if (( ([ratingArray[j] integerValue] < [ratingArray[k] integerValue]) &&
                         ([ratingArray[i] integerValue] < [ratingArray[j] integerValue]) ) ||
                        ( ([ratingArray[j] integerValue] > [ratingArray[k] integerValue]) &&
                         ([ratingArray[i] integerValue] > [ratingArray[j] integerValue]) )) {
                        
                        player3 = [ratingArray[k] integerValue];
                        teams++;
                    }
                }
            }
        }
        
    }
    
    return teams;
}

@end
