#import "TelephoneFinder.h"

@implementation TelephoneFinder
- (NSArray <NSString*>*)findAllNumbersFromGivenNumber:(NSString*)number {

    if (!number.length || [number intValue] < 0) {
        return nil;
    }
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:23];
    for (int index = 0; index < [number length]; index++) {
        int digit = [[number substringWithRange:NSMakeRange(index, 1)] intValue];
        switch (digit) {
            case 1:
                [array addObject:[number stringByReplacingCharactersInRange:NSMakeRange(index, 1) withString:@"2"]];
                [array addObject:[number stringByReplacingCharactersInRange:NSMakeRange(index, 1) withString:@"4"]];
                break;
            case 2:
                [array addObject:[number stringByReplacingCharactersInRange:NSMakeRange(index, 1) withString:@"1"]];
                [array addObject:[number stringByReplacingCharactersInRange:NSMakeRange(index, 1) withString:@"3"]];
                [array addObject:[number stringByReplacingCharactersInRange:NSMakeRange(index, 1) withString:@"5"]];
                break;
            case 3:
                [array addObject:[number stringByReplacingCharactersInRange:NSMakeRange(index, 1) withString:@"2"]];
                [array addObject:[number stringByReplacingCharactersInRange:NSMakeRange(index, 1) withString:@"6"]];
                break;
            case 4:
                [array addObject:[number stringByReplacingCharactersInRange:NSMakeRange(index, 1) withString:@"1"]];
                [array addObject:[number stringByReplacingCharactersInRange:NSMakeRange(index, 1) withString:@"5"]];
                [array addObject:[number stringByReplacingCharactersInRange:NSMakeRange(index, 1) withString:@"7"]];
                break;
            case 5:
                [array addObject:[number stringByReplacingCharactersInRange:NSMakeRange(index, 1) withString:@"2"]];
                [array addObject:[number stringByReplacingCharactersInRange:NSMakeRange(index, 1) withString:@"4"]];
                [array addObject:[number stringByReplacingCharactersInRange:NSMakeRange(index, 1) withString:@"6"]];
                [array addObject:[number stringByReplacingCharactersInRange:NSMakeRange(index, 1) withString:@"8"]];
                break;
            case 6:
                [array addObject:[number stringByReplacingCharactersInRange:NSMakeRange(index, 1) withString:@"3"]];
                [array addObject:[number stringByReplacingCharactersInRange:NSMakeRange(index, 1) withString:@"5"]];
                [array addObject:[number stringByReplacingCharactersInRange:NSMakeRange(index, 1) withString:@"9"]];
                break;
            case 7:
                [array addObject:[number stringByReplacingCharactersInRange:NSMakeRange(index, 1) withString:@"4"]];
                [array addObject:[number stringByReplacingCharactersInRange:NSMakeRange(index, 1) withString:@"8"]];
                break;
            case 8:
                [array addObject:[number stringByReplacingCharactersInRange:NSMakeRange(index, 1) withString:@"5"]];
                [array addObject:[number stringByReplacingCharactersInRange:NSMakeRange(index, 1) withString:@"7"]];
                [array addObject:[number stringByReplacingCharactersInRange:NSMakeRange(index, 1) withString:@"9"]];
                [array addObject:[number stringByReplacingCharactersInRange:NSMakeRange(index, 1) withString:@"0"]];
                break;
            case 9:
                [array addObject:[number stringByReplacingCharactersInRange:NSMakeRange(index, 1) withString:@"6"]];
                [array addObject:[number stringByReplacingCharactersInRange:NSMakeRange(index, 1) withString:@"8"]];
                break;
            case 0:
                [array addObject:[number stringByReplacingCharactersInRange:NSMakeRange(index, 1) withString:@"8"]];
                break;
            
            default:
                break;
        }
    }
    
    return array;
}
@end
