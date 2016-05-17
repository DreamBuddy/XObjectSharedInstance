//
//  MainObject+OneSharedInstance.h
//  OneLucky
//
//  Created by jiaying on 16/3/21.
//  Copyright © 2016年 imakejoy. All rights reserved.
//

#import "MainObject.h"

@interface MainObject (OneSharedInstance)

///实例化 单例 提供子类一个单例
+ (instancetype)sharedInstance;

@end
