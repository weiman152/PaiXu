//
//  main.c
//  Sort_C
//
//  Created by iOS on 2018/3/13.
//  Copyright © 2018年 weiman. All rights reserved.
//

#include <stdio.h>

void bubblingArray(int a[],int size);
void selectedSort(int a[], int size);
void insertSort(int a[], int size);

int main(int argc, const char * argv[]) {
   
    printf("Hello, World!\n");
    printf("----------冒泡-----------\n");
    int a[] = {6,17,26,18,19,39,1,6,14,3,40};
    int size =  sizeof(a)/sizeof(a[0]);
    bubblingArray(a, size);
    
    //经过排序函数后，这里打印的数组也是拍过顺序的，引用传递
    for(int i=0; i<size; i++){
        printf(" %d ",a[i]);
    }
    
    printf("\n");
    printf("----------选择-----------\n");
    int arr[] = {1,16,23,56,89,33,7,27,55,37,48};
    int sizeA = sizeof(arr)/sizeof(arr[0]);
    selectedSort(arr, sizeA);
    
    for(int i=0; i<sizeA; i++){
        printf(" %d ",arr[i]);
    }
    
    printf("\n");
    printf("----------插入-----------\n");
    int arr2[] = {12,15,9,20,6,31,24};
    int sizeB = sizeof(arr2)/sizeof(arr2[0]);
    insertSort(arr2, sizeB);
    
    for(int i=0; i<sizeB; i++){
        printf(" %d ",arr2[i]);
    }
    
    printf("\n");
    return 0;
}


/**
 冒泡排序

 @param a 待排序的数组
 @param size 数组的大小
 */
void bubblingArray(int a[],int size) {
    
    for (int j = 0; j< size-1; j++) {
        for (int i=0; i< size-1-j; i++) {
            if (a[i]>a[i+1]) {
                int tmp = a[i]+a[i+1];
                a[i] = tmp - a[i];
                a[i+1] = tmp - a[i];
            }
        }
    }
    //打印
    for(int i=0; i<size; i++){
        printf(" %d ",a[i]);
    }
    printf("\n");
}

/**
 选择排序

 @param a 排序的数组
 @param size 数组的长度
 */
void selectedSort(int a[], int size){
    
    int min = 0;
    for (int i = 0; i< size-1; i++) {
        min = i;
        for (int j=i+1; j<size; j++) {
            if (a[j]<a[min]) {
                min = j;
            }
        }
        if (min != i) {
            int tmp = a[i];
            a[i] = a[min];
            a[min] = tmp;
        }
    }
}

/**
 插入排序

 @param a 待排序数组
 @param size 数组大小
 */
void insertSort(int a[], int size) {
    for (int i = 0; i < size; i++) {
        int j = i;
        int temp = a[j];
        while (j > 0 && temp < a[j-1]) {
            a[j] = a[j-1];
            j--;
        }
        a[j] = temp;
    }
}






