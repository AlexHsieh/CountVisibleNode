//
//  main.m
//  CountVisableTree
//
//  Created by Alex Hsieh on 8/10/18.
//  Copyright © 2018 Alex Hsieh. All rights reserved.
//

// This is my coditiy test task 2
// I haven't practiced binary tree for a long time. I am unfamilar with it.
// During the test, I spent some time reading and understanding question so I can't finish on time.
// You can see my doubt for the question in the codility pad
// I wrote down that I'll use depth first search and continue working on the task right after
// codiitiy test without reference internet source.
// And this is it. You can run and see the test result.
//
// Hope this make senses
//


#import <Foundation/Foundation.h>
#import "Tree.h"

int countTree(int threshold, Tree * tree) {
    int count = 0;
    [tree setMarked:YES];
    [tree setThreshold:threshold];
    if(tree->x >= threshold) {
        count++;
        [tree setThreshold:tree->x];
    }
    return count;
}


int goThrough(Tree * tree, int threshold) {
    int count = 0;
    count += countTree(threshold, tree);
    
    if (tree->l) {
        count += goThrough(tree->l, tree.threshold);
    }
    
    if (tree->r) {
        count += goThrough(tree->r, tree.threshold);
    }
    
    return count;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int threshold = 0;
        int count = goThrough([Tree testSource1], threshold);
        NSLog(@"source 1 visiable count: %d", count);
        threshold = 0;
        count = goThrough([Tree testSource2], threshold);
        NSLog(@"source 2 visiable count: %d", count);

    }
    return 0;
}
