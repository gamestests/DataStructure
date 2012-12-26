//
//  main.m
//  DataStructure
//
//  Created by gxs on 12-12-25.
//  Copyright (c) 2012年 gxs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BST.h"



int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        int num[] = {1,5,3,6,7,3,7,9,4,1};
        
        BST *bst = [[BST alloc] init];
        [bst initBST];
        
        for (int i = 0; i<10; i++) {
            [bst insert:num[i]];
        }
        
        [bst deleteNode:3];
        NSLog(@"fre of 3 is %d",[bst find:3].freq);
        
        [bst traversal];
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    return 0;
}

