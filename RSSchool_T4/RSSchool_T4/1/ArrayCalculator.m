#import "ArrayCalculator.h"

@implementation ArrayCalculator
+ (NSInteger)maxProductOf:(NSInteger)numberOfItems itemsFromArray:(NSArray *)array {
    
     NSMutableArray *mArray = [NSMutableArray array];

        int product = 0;
    
        if (array) {
        for (int i = 0; i < array.count ; i++) {
            if ([array[i] isKindOfClass:[NSNumber class]]) {
                [mArray addObject:array[i]];
            }
        }
        if ([mArray count] > 0) {
            product = 1;
        if ( [mArray count] <= numberOfItems ) {
            for (int i = 0 ; i < [mArray count]; i++) {
               product *= [mArray[i] intValue];
            }
        } else {
            if ([mArray count] > 1) {
                [mArray sortUsingComparator:^NSComparisonResult(NSNumber*  _Nonnull obj1, NSNumber*  _Nonnull obj2) {
                    if (labs([obj2 intValue]) > labs([obj1 intValue]) ) {
                        return NSOrderedDescending;
                    }
                    if (labs([obj2 intValue]) == labs([obj1 intValue]) ) {
                                       return NSOrderedSame;
                                   }
                    return NSOrderedAscending;
                }];
            
            for (int i = 0 ; i < numberOfItems; i++) {
                product *= [mArray[i] intValue];
            }
            if(product < 0){
                product = 1;
                [mArray sortUsingDescriptors:@[[NSSortDescriptor sortDescriptorWithKey:@"self" ascending:NO]]];
                for (int i = 0 ; i < numberOfItems; i++) {
                product *= [mArray[i] intValue];
            }
            }
        }
        }
        }
}
        return product;
}
@end
