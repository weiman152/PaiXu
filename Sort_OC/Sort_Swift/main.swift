//
//  main.swift
//  Sort_Swift
//
//  Created by iOS on 2018/3/13.
//  Copyright © 2018年 weiman. All rights reserved.
//

import Foundation

print("Hello, World!")

let arr: [Int] = [6,17,26,18,19,39,1,6,14,3,40]

let mySort: Sort = Sort()

let sortArr: [Int] = mySort.bubblingSort(array: arr)
print("冒泡排序:        \(sortArr) ")

let systemSort = arr.sorted()
print("swift系统排序:   \(systemSort) ")

let sum:Int = mySort.sum(num: 11)
print("--n到0的和-- \(sum)")

let arr2: [Int] = [1,16,23,56,89,33,7,27,55,37,48]
mySort.selectedSort(array: arr2)

let arr3: [Int] = [12,15,9,20,6,31,24]
let insertA: [Int] = mySort.insertSort(array: arr3)
print("插入排序： \(insertA)")


