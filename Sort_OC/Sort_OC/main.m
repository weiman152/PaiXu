//
//  main.m
//  Sort_OC
//
//  Created by iOS on 2018/3/13.
//  Copyright © 2018年 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Sort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray * arr = [NSMutableArray arrayWithArray:@[@6,@17,@26,@18,@19,@39,@1,@6,@14,@3,@40]];
        Sort * sort = [[Sort alloc] init];
        //冒泡排序
        NSArray * bubble =  [sort bubblingSortWithMutableArray:arr];
        NSLog(@"冒泡：  %@",bubble);
        //选择排序
        NSMutableArray * arr2= [NSMutableArray arrayWithArray:@[@1,@16,@23,@56,@89,@33,@7,@27,@55,@37,@48]];
        NSArray * select = [sort selectedSortWithArray:arr2];
        NSLog(@"选择：  %@",select);
        
        //插入排序
        NSMutableArray * arr3 = [NSMutableArray
                                 arrayWithArray:@[@12,@15,@9,@20,@6,@31,@24]];
        NSArray * insert = [sort insertSortWithArray:arr3];
        NSLog(@"插入：  %@",insert);
        
    }
    return 0;
}
