#import "LexicographicallyMinimal.h"

@interface LexicographicallyMinimal()

@property (nonatomic, strong) NSMutableString *resultString;

@end

@implementation LexicographicallyMinimal

-(NSString *)findLexicographicallyMinimalForString1:(NSString *)string1 andString2:(NSString *)string2 {
 
    NSMutableString *resultString = [[NSMutableString alloc] init];
      
      while ([string1 length] && [string2 length]) {
          const char *first = [string1 UTF8String];
          const char *second = [string2 UTF8String];
          
          if (first[0] < second[0] || first[0] == second[0]) {
              [resultString appendString: [string1 substringToIndex: 1]];
              string1 = [string1 substringFromIndex: 1];
          } else {
              [resultString appendString: [string2 substringToIndex: 1]];
              string2 = [string2 substringFromIndex: 1];
          }
      }
      
      if ([string1 length]) {
          [resultString appendString: string1];
      } else {
          [resultString appendString: string2];
      }
      
      return resultString;

}

@end
