//
//  FDString.m
//  FDCategories
//
//  Created by QianTuFD on 2017/1/5.
//  Copyright © 2017年 fandy. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+FDHanziToPinYin.h"

@interface FDString : XCTestCase

@property (nonatomic, copy) NSString *str;


@end

@implementation FDString

- (void)setUp {
    [super setUp];
    self.str = @"汉字";
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testHanziToPinYin {
    NSString *str = [self.str stringToPinYin];
    NSLog(@"%@",str);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
