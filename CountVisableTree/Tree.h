//
//  Tree.h
//  CountVisableTree
//
//  Created by Alex Hsieh on 8/10/18.
//  Copyright © 2018 Alex Hsieh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tree: NSObject {
@public
    int x;
    Tree * l;
    Tree * r;
@private
    BOOL marked;
    int threshold;
}
- (void)setMarked:(BOOL)set;
- (BOOL)isMarked;
- (void)setThreshold:(int)value;
- (int)threshold;

+ (Tree *)testSource1;
+ (Tree *)testSource2;
@end
