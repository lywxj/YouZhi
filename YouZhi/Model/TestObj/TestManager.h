//
//  TestManager.h
//  YouZhi
//
//  Created by Arvin on 15/3/4.
//  Copyright (c) 2015年 com.roroge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestObj.h"

@interface TestManager : NSObject

+ (TestManager *)sharedInstance;

- (TestObj *)convertDicToTestObj:(NSDictionary *)dic;

@end
