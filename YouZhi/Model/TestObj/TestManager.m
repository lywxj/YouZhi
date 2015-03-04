//
//  TestManager.m
//  YouZhi
//
//  Created by Arvin on 15/3/4.
//  Copyright (c) 2015年 com.roroge. All rights reserved.
//

#import "TestManager.h"

@implementation TestManager

+ (TestManager *)sharedInstance {
    static TestManager *_sharedInstance = nil;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        _sharedInstance = [[TestManager alloc] init];
    });
    return _sharedInstance;
}

- (TestObj *)convertDicToTestObj:(NSDictionary *)dic {
    TestObj *obj = [[TestObj alloc] init];
    obj.tId = [dic objectForKey:@"id"];
    obj.tTitle = [dic objectForKey:@"title"];
    obj.tName = [dic objectForKey:@"name"];
    
    return obj;
}

@end
