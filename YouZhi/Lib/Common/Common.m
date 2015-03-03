//
//  Common.m
//  YouZhi
//
//  Created by Arvin on 15/3/3.
//  Copyright (c) 2015年 com.roroge. All rights reserved.
//

#import "Common.h"

@implementation Common

+(UIViewController *)getVCWithStoryBoardName:(NSString *)storyBoardName andVCIdentifier:(NSString *)vcIdentifier {
    UIStoryboard* mainStoryboard = [UIStoryboard storyboardWithName:storyBoardName bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:vcIdentifier];
    return vc;
}

@end
