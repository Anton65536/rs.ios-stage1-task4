#import "SquareDecomposer.h"

@implementation SquareDecomposer

-  (NSMutableArray*) precompose:(NSNumber*) n leftovers: (NSNumber*) left{
    if ([left longLongValue] == 0) {
        return  [NSMutableArray arrayWithObject:n];
    }
    for (long long i = [n longLongValue] - 1 ; i > 0; i--) {
        long long dSquared = i * i;
        if ([left longLongValue] >= dSquared) {
            NSNumber* maybeNeededNumber = [NSNumber numberWithLongLong:i];
            NSNumber* newLeftover = [NSNumber numberWithLongLong:([left longLongValue] - dSquared)];
            NSMutableArray *myArr = [self precompose:maybeNeededNumber leftovers:newLeftover];
            if (myArr != nil) {
                [myArr addObject:n];
                return myArr;
            }
        }
    }
return nil;
}

- (NSArray <NSNumber*>*)decomposeNumber:(NSNumber*)number {
    NSMutableArray *array = [self precompose:number  leftovers:[NSNumber numberWithLong:([number integerValue] * [number integerValue])]];
    if (array == nil) {
        return nil;
    }else{
        [array removeLastObject];
        return array;
    }
}

@end

