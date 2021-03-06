//
//  main.m
//  BMITime
//
//  Created by 初见寻常 on 16/4/16.
//  Copyright © 2016年 初见寻常. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "BNRPerson.h"
#import "BNREmployee.h"
#import "BNRAsset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
        BNREmployee *mikey = [[BNREmployee alloc] init];
        
        //[mikey setWeightInKilos:96];
        //[mikey setHeightInMeters:1.8];
        
        mikey.weightInKilos = 96;
        mikey.heightInMeters = 1.8;
        mikey.employeeID = 12;
        mikey.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2010"];
        
        
        //float height = [mikey heightInMeters];
        //int weight = [mikey weightInKilos];
        
        float height = mikey.heightInMeters;
        int weight = mikey.weightInKilos;
        
        NSLog(@"mikey is %.2f meters tall and weight is %d kilograms", height, weight);
        //NSLog(@"Employee %u hired on %@", mikey.employeeID, mikey.hireDate);
        NSDate *date = mikey.hireDate;
        NSLog(@"%@ hired on %@", mikey, date);
        
        float bmi = [mikey bodyMassIndex];
        double years = [mikey yearsOfEmployment];
        NSLog(@"mikey has a BMI of %.2f,has worked with us for %.2f years", bmi, years);
        */
        
        // 创建一数组，用来包含多个BNREmployee对象
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        // 创建NSmutableDictionary 对象，用于包含多个“主管”。
        NSMutableDictionary *excutives = [[NSMutableDictionary alloc] init];
        
        for (int i = 0; i < 10; i++) {
            // 创建BNREmployee实例
            BNREmployee *mikey = [[BNREmployee alloc] init];
            
            // 为实例变量赋值
            mikey.weightInKilos = 90 + i;
            mikey.heightInMeters = 1.8 - i / 10.0;
            mikey.employeeID = i;
            
            //将新创建的BNREmployee实例加入数组
            [employees addObject:mikey];
            
            // 第一个BNREmployee对象？
            if (i == 0) {
                [excutives setObject:mikey forKey:@"CEO"];
            }
            
            // 第二个BNREmployee对象？
            if (i == 1) {
                [excutives setObject:mikey forKey:@"CTO"];
            }
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        // 创建10个BNRAsset对象
        for (int i = 0; i < 10; i++) {
            // 创建一个BNRAsset对象
            BNRAsset *asset = [[BNRAsset alloc] init];
            
            // 为BNRAsset对象设置合适的标签
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            
            // 生成0至9之间的随机整数（包含0和9）
            NSUInteger randomIndex = random() % [employees count];
            
            // 取出相应的BNREmployee对象
            BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            // 将BNRAsset对象赋给该BNREmployee对象
            [randomEmployee addAsset:asset];
            
            [allAssets addObject:asset];
        }
        
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        
        NSSortDescriptor *eid = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        // 居然可以这样指定排序的依据值！
                                 
        [employees sortUsingDescriptors: @[voa, eid]];
        
        
        NSLog(@"Employees: %@", employees);
        
        NSLog(@"Giving up ownership of one employee");
        [employees removeObjectAtIndex:5];
        
        NSLog(@"allAssets: %@", allAssets);
        
        // 输出整个NSMutableDictionary 对象
        NSLog(@"exexutives: %@", excutives);
        
        // 输出CEO的信息
        NSLog(@"CEO: %@", excutives[@"CEO"]);
        excutives = nil;
        
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 70"];
        // amazing.像是能够理解并执行这句字符串一样，而实际上也确实是执行了吧？前面那个排序的也类似？
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        NSLog(@"toBeReclaimed: %@", toBeReclaimed);
        toBeReclaimed = nil;
        
        // exce 21.2 --------
        //NSLog(@"Remove one employee's one of assets.");
        //[employees[5] removeAsset:1];
        // -------- exce 21.2
        NSLog(@"Giving up ownership of arrays");
        
        allAssets = nil;
        employees = nil;
        
    }
    sleep(100);
    return 0;
}
