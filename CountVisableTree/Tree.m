//
//  Tree.m
//  CountVisableTree
//
//  Created by Alex Hsieh on 8/10/18.
//  Copyright © 2018 Alex Hsieh. All rights reserved.
//

#import "Tree.h"

@implementation Tree

- (void)setMarked:(BOOL)set {
    marked = set;
}

- (BOOL)isMarked {
    return marked;
}

- (void)setThreshold:(int)value {
    threshold = value;
}

- (int)threshold {
    return threshold;
}

+ (Tree *)testSource1 {

    Tree *node2 = [self node:2];
    Tree *node6 = [self node:6];
    Tree *node7 = [self node:7];
    Tree *node8 = [self node:8];
    Tree *nodeEight = [self node:8];

    node8->l = node2;
    node8->r = node6;
    node2->l = nodeEight;
    node2->r = node7;
    
    return node8;
}

+ (Tree *)testSource2 {
    
    Tree *node1 = [self node:1];
    Tree *node3 = [self node:3];
    Tree *node5 = [self node:5];
    Tree *node10 = [self node:10];
    Tree *node20 = [self node:20];
    Tree *node21 = [self node:21];
    
    node5->l = node3;
    node5->r = node10;
    node3->l = node20;
    node3->r = node21;
    node10->l = node1;

    return node5;
}

+ (Tree *)node:(int)value {
    Tree *node = [Tree new];
    node->x = value;
    return node;
}

@end
