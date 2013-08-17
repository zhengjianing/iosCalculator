//
//  CalculatorBrain.m
//  Calculator
//
//  Created by jianing on 8/16/13.
//  Copyright (c) 2013 jianing. All rights reserved.
//

#import "CalculatorBrain.h"

@interface CalculatorBrain()
@property (nonatomic, strong) NSMutableArray *operandStack;
@end

@implementation CalculatorBrain

@synthesize operandStack = _operandStack;

- (NSMutableArray *)operandStack
{
    if (_operandStack == nil) {
        _operandStack = [ [NSMutableArray alloc] init];
    }
    return _operandStack;
}

- (void)setOperandStack:(NSMutableArray *)operandStack
{
    _operandStack = operandStack;
}


- (void)pushOperand: (double)operand
{
    [self.operandStack addObject:[NSNumber numberWithDouble:operand]];
}

- (double)popOperand
{
    NSNumber *operandObject = [self.operandStack lastObject];
    if (operandObject) [self.operandStack removeLastObject];
    return [operandObject doubleValue];
}

- (double)performOperation: (NSString *) operation
{
    double result = 0;
    if([operation isEqualToString:@"+"]) {
        result = [self popOperand] + [self popOperand];
    }
    return result;
}

@end
