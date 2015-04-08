//
//  main.m
//  bml_day2_a2_c2
//
//  Created by Vincent Renais on 2015-04-08.
//  Copyright (c) 2015 Vincent Renais. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        /*
         
        1 - Expected output:
        
        Testing...
        ....1
        ...2
        ..3
        
        */
        
        
        // 2 - A program that subtracts 15 from 87:
        
        int x = 87;
        int y = 15;
        
        NSLog(@"%d - %d = %d", x, y, x - y);
        
        
        // 3 - Identify the syntactic errors:
        
        int sum;
        // COMPUTE RESULT
        sum = 25 + 37 - 19;
        // DISPLAY RESULTS
        NSLog (@"The answer is %i", sum);
        
        
        // 4 - Expected output:
         
        // "The result is 95"
        
    }
    return 0;
}
