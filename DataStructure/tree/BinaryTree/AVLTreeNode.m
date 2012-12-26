//
//  AVLTreeNode.m
//  DataStructure
//
//  Created by gxs on 12-12-25.
//  Copyright (c) 2012年 gxs. All rights reserved.
//

#import "AVLTreeNode.h"

@implementation AVLTreeNode

@synthesize lson = _lson;
@synthesize rson = _rson;
@synthesize data = _data;
@synthesize freq = _freq;
@synthesize height = _height;

+ (id)createWithData:(DataType)data
{
    return [AVLTreeNode createWithData:data Lson:nil Rson:nil Height:-1];
}

+ (id)createWithData:(DataType)data Lson:(AVLTreeNode *)lson Rson:(AVLTreeNode *)rson Height:(int)height
{
    return [[AVLTreeNode alloc] initWithData:data Lson:lson Rson:rson Height:height];
}

- (id)init
{
    self = [super init];
    if (self) {
        _lson = nil;
        _rson = nil;
        _freq = 1;
        _height = -1;
    }
    return self;
}

- (id)initWithData:(DataType)data Lson:(AVLTreeNode *)lson Rson:(AVLTreeNode *)rson Height:(int)height
{
    self = [super init];
    if (self) {
        _data = data;
        _lson = lson;
        _rson = rson;
        _freq = 1;
        _height = height;
    }
    return self;
}


- (void)updateHeight
{
    int rheight = -1;
    int lheight = -1;
    if(self.rson)
        rheight = self.rson.height;
    if(self.lson)
        lheight = self.lson.height;
    _height = MAX(rheight, lheight)+1;
        
}


@end
