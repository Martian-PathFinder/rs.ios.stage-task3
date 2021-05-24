#ifndef LevelOrderTraversal_h
#define LevelOrderTraversal_h

#import <Foundation/Foundation.h>

NSArray *LevelOrderTraversalForTree(NSArray *tree);

typedef enum {
    left,
    right
} Node;

#endif /* LevelOrderTraversal_h */
