//
//  TreeOperate.h
//  DataStructure
//
//  Created by gxs on 12-12-25.
//  Copyright (c) 2012年 gxs. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol TreeOperate <NSObject>


- (void) initBST;
- (void) insert:(DataType)data;
- (SeekTreeNode*) find:(DataType)data;
- (void) deleteNode:(DataType)data; //
- (void) traversal;         //遍历接口


@end
