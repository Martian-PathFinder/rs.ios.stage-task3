#import "LevelOrderTraversal.h"


NSInteger createLevelOrderTravelsal(NSArray *tree, NSInteger index, NSMutableArray *myTree, NSInteger level) {
    for (Node node = left; (level < [tree count]) && (node <= right); node++) {
        NSObject *node = [tree objectAtIndex:level];
        level++;
        if ([node isKindOfClass:NSNumber.class]) {
            if ([myTree count] <= index) {
                [myTree addObject:[NSMutableArray new]];
            }
            [myTree[index] addObject:node];
            level = createLevelOrderTravelsal(tree, index + 1, myTree, level);
        }
    }
    return level;
}


NSArray *LevelOrderTraversalForTree(NSArray *tree) {
    NSMutableArray *myTree = [NSMutableArray new];
    createLevelOrderTravelsal(tree, 0, myTree, 0);
    return [myTree copy];
}



