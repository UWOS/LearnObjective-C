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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
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
    }
    return 0;
}
