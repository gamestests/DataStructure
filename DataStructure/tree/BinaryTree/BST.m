//
//  BST.m
//  DataStructure
//
//  Created by gxs on 12-12-25.
//  Copyright (c) 2012年 gxs. All rights reserved.
//

#import "BST.h"

@interface BST ()

- (void) insertpri:(SeekTreeNode*)node Data:(DataType)data;
- (SeekTreeNode*)findpri:(SeekTreeNode*)node Data:(DataType)data;
- (void) insubtree:(SeekTreeNode*)node;
- (void) deletepri:(SeekTreeNode*)node Data:(DataType)data;

@end


@implementation BST

//插入
- (void)insertpri:(SeekTreeNode *)node Data:(DataType)data
{
    if(!node)       //如果节点是空，就在此节点上添加信息
    {
        _root = [SeekTreeNode createWithData:data];
        return;

    }
    if(node.data>data)  //节点上的值大于要添加的值，添加到左子树中
    {
        if(!node.lson)
        {
            node.lson = [SeekTreeNode createWithData:data];
            return;
        }
        [self insertpri:node.lson Data:data];
    }
    else if(node.data == data)  //相等，把频率加一
    {
        node.freq += 1;
    }
    else                //节点上的值小于，添加到右子树中
    {
        if(!node.rson)
        {
            node.rson = [SeekTreeNode createWithData:data];
            return;
        }
        [self insertpri:node.rson Data:data];
    }
    
}

- (SeekTreeNode *)findpri:(SeekTreeNode *)node Data:(DataType)data
{
    if(!node)
    {
        return nil;
    }
    if(node.data>data)
    {
        return [self findpri:node.lson Data:data];
    }
    else if(node.data<data)
    {
        return [self findpri:node.rson Data:data];
    }
    else
        return node;
}

- (void)deletepri:(SeekTreeNode *)node Data:(DataType)data
{
    if(!node) return;
    if(node.data>data) [self deletepri:node.lson Data:data];
    else if(node.data<data) [self deletepri:node.rson Data:data];
    else                //如果相等
    {
        if(node.rson && node.rson)
        {
            SeekTreeNode *temp = node.rson;
            while (temp.lson) temp = temp.lson;
            node.data = temp.data;
            node.freq = temp.freq;
            [self deletepri:temp Data:temp.data];  //
        }
        else
        {
            if(!node.lson)
                node = node.rson;
            else if(!node.rson)
                node = node.lson;
            [node release];
            node = nil;
        }
    }
    
}

//中序遍历
- (void)insubtree:(SeekTreeNode *)node
{
    if(!node) return;
    [self insubtree:node.lson];
    NSLog(@"%d",node.data);
    [self insubtree:node.rson];
}

#define mark - TreeOperate

//初始化
- (void)initBST
{
    _root = nil;
}

//插入接口
- (void)insert:(DataType)data
{
    [self insertpri:_root Data:data];
}

//查找接口
- (SeekTreeNode *)find:(DataType)data
{
    return [self findpri:_root Data:data];
}

//删除接口
- (void)deleteNode:(DataType)data
{
    return [self deletepri:_root Data:data];
}

//中序遍历接口
- (void)traversal
{
    [self insubtree:_root];
}



































@end
