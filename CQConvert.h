//
//  CQConvert.h
//  Cryptoquips
//
//  Created by Andrew King on 2015-02-21.
//
//

#import <Foundation/Foundation.h>

@interface CQConvert : NSObject

/**
 * Returns the index of a string (ie "A" -> 0, "Z" -> 25)
 */
+ (NSInteger)keyboardAlphaIndexFromString:(NSString *)alphaString;

/**
 * Returns the index of a character (ie 67 -> 2)
 */
+ (NSInteger)keyboardAlphaIndexFromCharacter:(unichar)character;

/**
 * Returns the string representation of an alpha index (ie 0 -> "A", 25 -> "Z")
 */
+ (NSString *)keyboardAlphaStateStringFromIndex:(NSInteger)index;

/**
 * Converts a string into an array where each entry represents a letter in the string (ie "ABCZ" -> @[0,1,2,25])
 */
+ (NSMutableArray *)convertStringToASCIIMutableArray:(NSString *)stringIn;

/**
 * Converts an array into a string (ie @[0,1,2,25] -> @"ABCZ")
 */
+ (NSString *)convertASCIIArrayToString:(NSArray *)arrayIn;

/**
 * Determines if the given integer is the ascii value of a capital letter.
 */
+ (BOOL)intIsACapitalLetter:(NSInteger)intIn;

@end
