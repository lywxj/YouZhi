//
//  TestObj.m
//  YouZhi
//
//  Created by Arvin on 15/3/4.
//  Copyright (c) 2015年 com.roroge. All rights reserved.
//

#import "TestObj.h"

@implementation TestObj

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self) {
        self.tId = [aDecoder decodeObjectForKey:@"1"];
        self.tTitle = [aDecoder decodeObjectForKey:@"2"];
        self.tName = [aDecoder decodeObjectForKey:@"3"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.tId forKey:@"1"];
    [aCoder encodeObject:self.tTitle forKey:@"2"];
    [aCoder encodeObject:self.tName forKey:@"3"];
}

@end
