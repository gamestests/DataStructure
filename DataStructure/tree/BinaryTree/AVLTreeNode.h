//
//  AVLTreeNode.h
//  DataStructure
//
//  Created by gxs on 12-12-25.
//  Copyright (c) 2012年 gxs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DataType.h"

@interface AVLTreeNode : NSObject<DataType>
{
    AVLTreeNode *_lson;        //指向左儿子
    AVLTreeNode *_rson;        //指向右儿子
    DataType _data;             //数据
    unsigned int _freq;          //频率
    int _height;                 //空树高度是-1

}

@property (assign, nonatomic) AVLTreeNode *lson;
@property (assign, nonatomic) AVLTreeNode *rson;
@property (assign, nonatomic) DataType data;
@property (assign, nonatomic) unsigned int freq;
@property (assign, nonatomic) int height;

+ (id)createWithData:(DataType)data;
+ (id)createWithData:(DataType)data Lson:(AVLTreeNode*)lson Rson:(AVLTreeNode*)rson Height:(int)height;

- (id)initWithData:(DataType)data Lson:(AVLTreeNode*)lson Rson:(AVLTreeNode*)rson Height:(int)height;

- (void)updateHeight;



@end
