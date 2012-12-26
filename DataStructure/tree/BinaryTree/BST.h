//
//  BST.h
//  DataStructure
//
//  Created by gxs on 12-12-25.
//  Copyright (c) 2012年 gxs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SeekTreeNode.h"
#import "TreeOperate.h"

@interface BST : NSObject <DataType,TreeOperate>
{
    SeekTreeNode *_root;
}

//- (void) initBST;
//- (void) insert:(DataType)data;
//- (SeekTreeNode*) find:(DataType)data;
//- (void) delete:(DataType)data; //
//- (void) traversal;         //遍历接口




@end
