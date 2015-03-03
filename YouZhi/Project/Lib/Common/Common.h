//
//  Common.h
//  YouZhi
//
//  Created by Arvin on 15/3/3.
//  Copyright (c) 2015年 com.roroge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Common : NSObject

+(UIViewController *)getVCWithStoryBoardName:(NSString *)storyBoardName andVCIdentifier:(NSString *)vcIdentifier;

@end
