//
//  Sort.m
//  Sort_OC
//
//  Created by iOS on 2018/3/13.
//  Copyright © 2018年 weiman. All rights reserved.
//

#import "Sort.h"

@implementation Sort

//oc 冒泡排序
- (NSArray *)bubblingSortWithMutableArray:(NSMutableArray *)array {
    NSMutableArray * arr = [array mutableCopy];
    for ( int j=0; j<arr.count-1; j++) {
        for (int i=0; i<(arr.count-1)-j; i++) {
            if (arr[i]>arr[i+1]) {
                [arr exchangeObjectAtIndex:i withObjectAtIndex:i+1];
            }
        }
    }
    return arr;
}

- (NSArray *)selectedSortWithArray:(NSMutableArray *)array {
    NSMutableArray * arr = [array mutableCopy];
    int min = 0;
    for (int j = 0; j<arr.count-1; j++) {
        min = j;//最小值下标记录
        for (int i = j+1; i<arr.count; i++) {
            if (arr[min] > arr[i]) {
                min = i;
            }
        }
        if (min!=j) {
            [arr exchangeObjectAtIndex:min withObjectAtIndex:j];
        }
        
    }
    
    return arr;
}

-(NSArray *)insertSortWithArray:(NSMutableArray *)array {
    for (int i=0; i<array.count; i++) {
        int j = i;//记录当前位置
        int temp = [array[j] intValue];//目标记录
        while (j>0 && temp < [array[j-1] intValue]) {
            array[j] = array[j-1];
            j--;
        }
        array[j] = @(temp);
    }
    return array;
}


@end
