//
//  AVLTree.m
//  DataStructure
//
//  Created by gxs on 12-12-25.
//  Copyright (c) 2012年 gxs. All rights reserved.
//

#import "AVLTree.h"

@interface AVLTree ()

@end


@implementation AVLTree


- (int)height:(AVLTreeNode *)node
{
    if(node)
        return node.height;
    return -1;
}

- (void)SingRotateLeft:(AVLTreeNode *)k2
{
    AVLTreeNode *k1 = k2.lson;
    k2.lson = k1.rson;
    k1.rson = k2;
    
    [k1 updateHeight];
    [k2 updateHeight];
}

- (void)SingRotateRight:(AVLTreeNode *)k2
{
    AVLTreeNode *k1 = k2.rson;
    k2.rson = k1.lson;
    k1.lson = k2;
    
    [k1 updateHeight];
    [k2 updateHeight];
}

- (void)DoubleRotateLR:(AVLTreeNode *)k3
{
    [self SingRotateRight:k3.lson];
    [self SingRotateLeft:k3];
}

- (void)DoubleRotateRL:(AVLTreeNode *)k3
{
    [self SingRotateLeft:k3.rson];
    [self SingRotateRight:k3];
}








@end
