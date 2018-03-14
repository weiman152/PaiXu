//
//  Sort.swift
//  Sort_Swift
//
//  Created by iOS on 2018/3/13.
//  Copyright © 2018年 weiman. All rights reserved.
//

import Cocoa

class Sort: NSObject {
    
    /// 冒泡排序
    ///
    /// - Parameter array: 排序前的数组
    /// - Returns: 排序后的数组
    func bubblingSort(array: [Int]) -> [Int] {
        var arr: [Int] = array
        for j in 0..<arr.count {
            for i in 0..<arr.count-j-1 {
                if arr[i] > arr[i+1] {
                    arr.swapAt(i, i+1)
                }
            }
            
        }
        return arr
    }
    
    func sum(num: Int) -> Int {
        var he = 0
        for i in 0..<num {
            he = he + i
        }
        return he
    }
    
    /// 选择排序
    ///
    /// - Parameter array: 需要排序的数组
    func selectedSort(array: [Int]) {
        var arr = array
        //记录最小值的下标
        var min = 0;
        for i in 0..<arr.count-1 {
            min = i
            for j in i+1..<arr.count {
                if arr[j] < arr[min] {
                    min = j
                }
            }
            if min != i {
                arr.swapAt(i, min)
            }
        }
        print("选择排序：    \(arr)")
    }
    
    ///插入排序
    ///
    /// - Parameter array: 待排序的数组
    /// - Returns: 排序后的数组
    func insertSort(array: [Int]) -> [Int] {
        var myArray: [Int] = array
        for i in 0..<myArray.count {
            var j = i
            let temp = myArray[j]
            while j>0, temp<myArray[j-1] {
                myArray[j] = myArray[j-1]
                j=j-1
            }
            myArray[j] = temp
        }
        return myArray
    }
    
}
