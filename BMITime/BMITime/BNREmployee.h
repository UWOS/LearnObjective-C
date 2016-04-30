//
//  BNREmployee.h
//  BMITime
//
//  Created by 初见寻常 on 16/4/17.
//  Copyright © 2016年 初见寻常. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"
@class BNRAsset;

@interface BNREmployee : BNRPerson
//{
//    NSMutableArray *_assets;
//}

@property (nonatomic) unsigned int employeeID;
//@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;
//@property (nonatomic, copy) NSArray *assets;  // 删除这个属性后好像也没啥影响，至少在这个例子的范围内好像没啥影响，
                                                // 还是不理解这里为何要声明一个属性和一个实例变量。好像是为了数据保护？
                                                // 在第22章中继续，好像确实是为了数据保护的样子，
                                                // 隐藏实际的实现或设计考虑，但是现在来看完全不出现这个属性还是没啥影响啊。自动换行的结果还会被认为在一行啊。

- (double) yearsOfEmployment;
- (void) addAsset:(BNRAsset *) a;
- (unsigned int) valueOfAssets;

// exce 21.2
- (void) removeAsset:(unsigned int) index;

@end
