#import "FullBinaryTrees.h"
#import "Node.h"

@implementation FullBinaryTrees

- (NSMutableString*)stringTreeRepresentation:(Node*)node{
    NSMutableArray* current = [NSMutableArray array];
    NSMutableArray* next = [NSMutableArray array];
    NSMutableArray* res = [NSMutableArray array];
    
    [next addObject:node];
    do {
        current = [next copy];
        [next removeAllObjects];
        for (id currentNode in current) {
            if ([currentNode isKindOfClass:[Node class]]) {
            [res addObject:[currentNode valueForKey:@"number"]];
            [currentNode valueForKey:@"left"] == nil ? [next addObject:[NSNull null]] : [next addObject: [currentNode valueForKey:@"left"]];
            [currentNode valueForKey:@"right"] == nil ? [next addObject:[NSNull null]] : [next addObject: [currentNode valueForKey:@"right"]];
            } else {
                [res addObject:[NSNull null]];
            }
        }
    } while (next.count > 0);
    while (true) {
        if([res lastObject] == [NSNull null]){
            [res removeLastObject];
        } else{
            break;
        }
    }
    
    return [NSMutableString stringWithFormat:@"[%@]", [[res valueForKey:@"description"] componentsJoinedByString:@","]];
}


- (NSString *)stringForNodeCount:(NSInteger)count {
    NSMutableString* mStr = [NSMutableString stringWithFormat:@"["];
    for (Node* node in [self availableNodes: count]) {
        [mStr appendString:[NSString stringWithFormat:@"%@\n", [[self stringTreeRepresentation: node] stringByReplacingOccurrencesOfString:@"<null>" withString:@"null"]]];
    }
    [mStr appendString:[NSString stringWithFormat:@"]"]];
    return  mStr;
}


- (NSMutableArray*)availableNodes:(NSInteger)nodesQuantity{
    NSMutableArray* res = [[NSMutableArray alloc] init];
    if (nodesQuantity < 1 || nodesQuantity % 2 == 0) {
        return res;
    }
    if (nodesQuantity == 1) {
        [res addObject:[[Node alloc] initNewNode]];
        return res;
    }
    
    for (int i = 1; i < nodesQuantity; i = i + 2 ) {
        for (Node* lNode in [self availableNodes:i]) {
            for (Node* rNode in [self availableNodes:nodesQuantity - 1 - i]){
                Node* newRoot = [[Node alloc] initNewNode];
                newRoot.left = lNode;
                newRoot.right = rNode;
                [res addObject:newRoot];
            }
        }
    }
    return res;
}
@end
 

