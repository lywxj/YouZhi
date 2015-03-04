//
//  Common.h
//  YouZhi
//
//  Created by Arvin on 15/3/3.
//  Copyright (c) 2015年 com.roroge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define RGBA(R, G, B, A)        [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:A]
#define RGB(R,G,B)              [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1.0]

@interface Common : NSObject

+(UIViewController *)getVCWithStoryBoardName:(NSString *)storyBoardName andVCIdentifier:(NSString *)vcIdentifier;

@end
