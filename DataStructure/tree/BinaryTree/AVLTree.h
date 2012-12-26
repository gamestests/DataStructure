//
//  AVLTree.h
//  DataStructure
//
//  Created by gxs on 12-12-25.
//  Copyright (c) 2012年 gxs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "TreeOperate.h"
#import "AVLTreeNode.h"

@interface AVLTree : NSObject <TreeOperate>
{
    AVLTree *_root;
}


- (void) insertpri:(AVLTreeNode*)node Data:(DataType)data;
- (AVLTreeNode*)findpri:(AVLTreeNode*)node Data:(DataType)data;
- (void) insubtree:(AVLTreeNode*)node;
- (void) deletepri:(AVLTreeNode*)node Data:(DataType)data;

- (int)height:(AVLTreeNode*)node;

- (void)SingRotateLeft:(AVLTreeNode*)k2;
- (void)SingRotateRight:(AVLTreeNode*)k2;
- (void)DoubleRotateLR:(AVLTreeNode*)k3;
- (void)DoubleRotateRL:(AVLTreeNode*)k3;









@end
