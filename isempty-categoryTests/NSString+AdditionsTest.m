//
//  NSString+AdditionsTest.m
//  isempty-category
//
//  Created by Vanger on 01.05.12.
//  Copyright (c) 2012 Flexis. All rights reserved.
//

#import "NSString+AdditionsTest.h"
#import "NSString+Additions.h"

@implementation NSString_AdditionsTest

- (void)testEmptyStringIsEmpty {
    STAssertEquals([@"" isEmpty], YES, @"Empty string should return YES on isEmpty request");
}

- (void)testStringWithSpaceIsNotEmpty {
    STAssertEquals([@" " isEmpty], NO, @"String \" \" should return NO on isEmpty request");
}

- (void)testStringWithCharsIsNotEmpty {
    STAssertEquals([@"abc" isEmpty], NO, @"String \"abc\" should return NO on isEmpty request");
}

- (void)testClassMethodStringWithCharsNotEmpty {
    STAssertEquals([NSString isEmpty:@"abcde"], NO, @"Class NSString should return NO on isEmpty request with argument \"abcde\"");
}

- (void)testClassMethodNULLisEmpty {
    STAssertEquals([NSString isEmpty:NULL], YES, @"Class NSString should return NO on isEmpty request with argument NULL");
}

@end