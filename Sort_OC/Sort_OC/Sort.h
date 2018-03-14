//
//  Sort.h
//  Sort_OC
//
//  Created by iOS on 2018/3/13.
//  Copyright © 2018年 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sort : NSObject

/**
 冒泡排序

 @param array 排序前的数组
 @return 排序后的数组
 */
- (NSArray *)bubblingSortWithMutableArray:(NSMutableArray *)array;

/**
 选择排序

 @param array 排序前的数组
 @return 排序后的数组
 */
- (NSArray *)selectedSortWithArray:(NSMutableArray *)array;

/**
 插入排序

 @param array 待排序的数组
 @return 已经排序的数组
 */
- (NSArray *)insertSortWithArray:(NSMutableArray *)array;

@end
