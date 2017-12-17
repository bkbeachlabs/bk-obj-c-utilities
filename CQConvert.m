//
//  CQConvert.m
//  Cryptoquips
//
//  Created by Andrew King on 2015-02-21.
//
//

#import "CQConvert.h"

@implementation CQConvert

+ (NSInteger)keyboardAlphaIndexFromString:(NSString *)alphaString {
    if (alphaString.length > 1 || alphaString.length == 0 || [alphaString isEqualToString:@" "] || [alphaString isEqualToString:@""]) {
        return -1;
    }
    
    unichar thisChar = [alphaString characterAtIndex:0];
    return thisChar - 65;
}

+ (NSInteger)keyboardAlphaIndexFromCharacter:(unichar)character {
    return character - 65;
}

+ (NSString *)keyboardAlphaStateStringFromIndex:(NSInteger)index {
    if (index < 0 || index > 25) {
        return nil;
    }
    
    unichar alpha = index + 65;
    return [NSString stringWithCharacters:&alpha length:1];
}

+ (NSMutableArray *)convertStringToASCIIMutableArray:(NSString *)stringIn {
    NSMutableArray *arrayOut = [NSMutableArray arrayWithCapacity:stringIn.length];
    for (NSInteger i=0; i<stringIn.length; i++) {
        unichar ch = [stringIn characterAtIndex:i];
        if (ch > 96 && ch<123) ch = ch - 32; // convert to all capitals
        [arrayOut insertObject:[NSNumber numberWithChar:ch] atIndex:i];
    }
    return arrayOut ;
}

+ (NSString *)convertASCIIArrayToString:(NSArray *)arrayIn {
    NSString *stringOut = @"";
    for (NSInteger i=0; i<[arrayIn count]; i++) {
        //unichar thisChar = (unichar)[arrayIn objectAtIndex:i];
        NSString *thisChar = [NSString stringWithFormat:@"%c",[[arrayIn objectAtIndex:i] intValue]];
        stringOut = [stringOut stringByAppendingString:thisChar];
    }
    return stringOut;
}

+ (BOOL)intIsACapitalLetter:(NSInteger)intIn {
    return (intIn > 64 && intIn <91);
}

@end
