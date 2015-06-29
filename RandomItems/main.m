//
//  main.m
//  RandomItems
//
//  Created by zhengnan on 15/6/27.
//  Copyright (c) 2015年 zhengnan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            Item *item = [Item randomItem];
            [items addObject:item];
        }
        
        Item *backpack = [[Item alloc] initWithItemName:@"Backpack"];
        Item *calculator = [[Item alloc] initWithItemName:@"Calculator"];
        
        backpack.containedItem = calculator;
        
        backpack = nil;
        calculator = nil;
        
        for (Item *item in items) {
            NSLog(@"%@", item);
        }
        
        //Destroy the mutable array object
        NSLog(@"Setting items to nil");
        items = nil;
        
    }
    return 0;
}
