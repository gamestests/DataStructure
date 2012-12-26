//
//  SeekTreeNode.h
//  DataStructure
//
//  Created by gxs on 12-12-25.
//  Copyright (c) 2012年 gxs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DataType.h"

@interface SeekTreeNode : NSObject <DataType>
{
    SeekTreeNode *_lson;        //指向左儿子
    SeekTreeNode *_rson;        //指向右儿子
    DataType _data;             //数据
    unsigned int _freq;          //频率
}

@property (assign, nonatomic) SeekTreeNode *lson;
@property (assign, nonatomic) SeekTreeNode *rson;
@property (assign, nonatomic) DataType data;
@property (assign, nonatomic) unsigned int freq;

+ (id)createWithData:(DataType)data;
+ (id)createWithData:(DataType)data Lson:(SeekTreeNode*)lson Rson:(SeekTreeNode*)rson;

- (id)initWithData:(DataType)data Lson:(SeekTreeNode*)lson Rson:(SeekTreeNode*)rson;

@end