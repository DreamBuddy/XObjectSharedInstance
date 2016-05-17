//
//  MainObject+OneSharedInstance.m
//  OneLucky
//
//  Created by jiaying on 16/3/21.
//  Copyright © 2016年 imakejoy. All rights reserved.
//

#import "MainObject+OneSharedInstance.h"

static const char sharedInstance;

@implementation MainObject (OneSharedInstance)

///实例化 单例
+ (id)sharedInstance
{
    Class selfClass = [self class];
    id instance = objc_getAssociatedObject(selfClass, &sharedInstance);
    @synchronized(instance) {
        if (!instance)
        {
            instance = [[selfClass alloc] init];
            objc_setAssociatedObject(selfClass, &sharedInstance, instance, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        }
    }
    
    return instance;
}

@end
