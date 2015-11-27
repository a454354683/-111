//
//  main.m
//  Selector
//
//  Created by tarena on 15/8/27.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRStudent.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /* 
         SEL是一个类型，是一个函数类型。
         int a = 10; a是类型变量，10赋值给它
         
         SEL sel = @selector(funName);
         */
        
         SEL sel = @selector(funName);
        TRStudent *stu = [[TRStudent alloc] init];
        // 判断学生类中是否有 方法选择器中的方法 sel
        BOOL is = [TRStudent instancesRespondToSelector:sel];
//        BOOL is = [TRStudent instancesRespondToSelector:@selector(funName)];
        
        if (is) {
             [stu performSelector:sel];
        }
       
        
    }
    return 0;
}
