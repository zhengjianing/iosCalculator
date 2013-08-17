//
//  CalculatorBrain.h
//  Calculator
//
//  Created by jianing on 8/16/13.
//  Copyright (c) 2013 jianing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject

- (void)pushOperand: (double)operand;
- (double)performOperation: (NSString *) operation;
@end
