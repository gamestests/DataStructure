//
//  SeekTreeNode.m
//  DataStructure
//
//  Created by gxs on 12-12-25.
//  Copyright (c) 2012年 gxs. All rights reserved.
//

#import "SeekTreeNode.h"

@implementation SeekTreeNode

@synthesize lson = _lson;
@synthesize rson = _rson;
@synthesize data = _data;
@synthesize freq = _freq;

+ (id)createWithData:(DataType)data
{
    return [SeekTreeNode createWithData:data Lson:nil Rson:nil];
}

+ (id)createWithData:(DataType)data Lson:(SeekTreeNode *)lson Rson:(SeekTreeNode *)rson
{
    return [[SeekTreeNode alloc] initWithData:data Lson:lson Rson:rson];
}

- (id)init
{
    self = [super init];
    if (self) {
        _lson = nil;
        _rson = nil;
        _freq = 1;
    }
    return self;
}

- (id)initWithData:(DataType)data Lson:(SeekTreeNode *)lson Rson:(SeekTreeNode *)rson
{
    self = [super init];
    if (self) {
        _data = data;
        _lson = lson;
        _rson = rson;
        _freq = 1;
    }
    return self;
}


@end
