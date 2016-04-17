//
//  BNRPerson.h
//  BMITime
//
//  Created by 初见寻常 on 16/4/16.
//  Copyright © 2016年 初见寻常. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject

// BNRPerson 类有两个属性
@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;

//{
    // BNRPerson类拥有两个实例变量
    //float _heightInMeters;
    //int _weightInKilos;
//}

// BNRPerson 类拥有可以读取并设置实例变量的方法
//- (float)heightInMeters;
//- (void)setHeightInMeters:(float)h;
//- (int)weightInKilos;
//- (void)setWeightInKilos:(int)w;

// BNRPerson 类拥有计算Body Mass Indes的方法
- (float)bodyMassIndex;

@end
