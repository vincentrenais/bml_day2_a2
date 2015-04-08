//
//  main.m
//  IntroductionToObjective-C
//
//  Created by Vincent Renais on 2015-04-07.
//  Copyright (c) 2015 Vincent Renais. All rights reserved.
//

// This is an inline comment

// COMMENTS

/* This is a block comment
It can span multiple lines. */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        
        // VARIABLES
        
        double odometer = 9200.8;
        int odometerAsInteger = (int)odometer;
        
        NSLog(@"You've driven %.1f miles", odometer);
        NSLog(@"You've driven %d", odometerAsInteger);
        
        
        //CONSTANTS
        
        /* double const pi = 3.14159;
        pi = 42001.0; */
        
        
        //ARITHMETIC
        
        NSLog(@"6 + 2 = %d", 6 + 2); //8
        NSLog(@"6 - 2 = %d", 6 - 2); //4
        NSLog(@"6 * 2 = %d", 6 * 2); //12
        NSLog(@"6 / 2 = %d", 6 / 2); //3
        NSLog(@"6 %% 2 = %d", 6 % 2); //0
        
        int i = 0;
        NSLog(@"i = %d", i); //0
        i++;
        NSLog(@"i = %d", i); //1
        i+=5;
        NSLog(@"i = %d", i); //6
        
        
        //CONDITIONALS
        
        int modelYear = 1990;
        
        if (modelYear < 1967) {
            NSLog(@"That car is an antique!!!");
        }else if (modelYear <= 1991){
            NSLog(@"That car is a classic!");
        }else if (modelYear == 2013){
            NSLog(@"That's a brand new car!");
        }else {
            NSLog(@"There is nothing special about that car.");
        }
     
        
        //OPERATOR DESCRIPTION
        
        switch (modelYear) {
            case 1987:
                NSLog(@"Your car is from 1987.");
                break;
            case 1988:
                NSLog(@"Your car is from 1988.");
                break;
            case 1989:
            case 1990:
                NSLog(@"Your car is from 1989 or 1990.");
                break;
            default:
                NSLog(@"I have no idea when your car was made.");
                break;
        }
        
        // LOOPS
        
        //int modelYear = 1990;
        
        // While loops
        
        //int i= 0;
        while (i<5) {
            if (i == 3) {
                NSLog(@"Aborting the While loop");
                break;
                
            }
            NSLog(@"Current year: %d", modelYear +i);
            i++;
            
        }
        
        // For loop
        
        for (int i=0; i<5; i++) {
            if (i == 3) {
                NSLog(@"skipping a for-loop iteration");
                continue;
            }
            NSLog(@"current year: %d", modelYear + i);
        }
        
        // For-in loop
        
        NSArray *models = @[@"Ford", @"Honda", @"Nissan", @"Porsche"];
        for (id model in models) {
            NSLog(@"%@", model);
        }
        
        // MACROS
        
        
        #define PI 3.14159
        #define RAD_TO_DEG(radians) (radians * (180.0 / PI))
        
        int main(int argc, const char * argv[]) {
            @autoreleasepool {
                double angle = PI / 2;              // 1.570795
                NSLog(@"%f", RAD_TO_DEG(angle));    // 90.0
            }
            return 0;
        }
        
        
        // TYPEDEF
        
        
        typedef unsigned char ColorComponent;
        
        int main(int argc, const char * argv[]) {
            @autoreleasepool {
                ColorComponent red = 255;
                ColorComponent green = 160;
                ColorComponent blue = 0;
                NSLog(@"Your paint job is (R: %hhu, G: %hhu, B: %hhu)",
                      red, green, blue);
            }
            return 0;
        }

        
        // STRUCTS
        
        
        typedef struct {
            unsigned char red;
            unsigned char green;
            unsigned char blue;
        } Color;
        
        int main(int argc, const char * argv[]) {
            @autoreleasepool {
                Color carColor = {255, 160, 0};
                NSLog(@"Your paint job is (R: %hhu, G: %hhu, B: %hhu)",
                      carColor.red, carColor.green, carColor.blue);
            }
            return 0;
        }
        
        
        // ENUMS
        
        typedef enum {
            FORD,
            HONDA,
            NISSAN,
            PORSCHE
        } CarModel;
        
        int main(int argc, const char * argv[]) {
            @autoreleasepool {
                CarModel myCar = NISSAN;
                switch (myCar) {
                    case FORD:
                    case PORSCHE:
                        NSLog(@"You like Western cars?");
                        break;
                    case HONDA:
                    case NISSAN:
                        NSLog(@"You like Japanese cars?");
                        break;
                    default:
                        break;
                }
            }
            return 0;
        }
        
        
        // POINTERS
        
        int year = 1967;          // Define a normal variable
        int *pointer;             // Declare a pointer that points to an int
        pointer = &year;          // Find the memory address of the variable
        NSLog(@"%d", *pointer);   // Dereference the address to get its value
        *pointer = 1990;          // Assign a new value to the memory address
        NSLog(@"%d", year);       // Access the value via the variable
        
        
        char model[5] = {'H', 'o', 'n', 'd', 'a'};
        char *modelPointer = &model[0];
        for (int i=0; i<5; i++) {
            NSLog(@"Value at memory address %p is %c",
                  modelPointer, *modelPointer);
            modelPointer++;
        }
        NSLog(@"The first letter is %c", *(modelPointer - 5));
        
        
        // THE NULL POINTER
        
        int year = 1967;
        int *pointer = &year;
        NSLog(@"%d", *pointer);     // Do something with the value
        pointer = NULL;             // Then invalidate it
        
        
        // VOID POINTERS
        
        int year = 1967;
        void *genericPointer = &year;
        int *intPointer = (int *)genericPointer;
        NSLog(@"%d", *intPointer);
        
        
        
        // POINTERS IN OBJECTIVE-C
        
        NSString *anObject;    // An Objective-C object
        anObject = NULL;       // This will work
        anObject = nil;        // But this is preferred
        int *aPointer;         // A plain old C pointer
        aPointer = nil;        // Don't do this
        aPointer = NULL;       // Do this instead
        
        
        // 2 - Write a program that displays the following text: This is my second day at bitmaker labs
        
        NSLog(@"This is my second day at bitmaker labs");
        
    }
    return 0;
}
