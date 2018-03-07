//
//  JKEventHandler+Demo.m
//  JKWKWebViewHandler
//
//  Created by Jack on 17/4/1.
//  Copyright © 2017年 HHL110120. All rights reserved.
//

#import "JKEventHandler+Demo.h"

@implementation JKEventHandler (Demo)

- (void)sendInfoToNative:(id)params{
    NSLog(@"sendInfoToNative :%@",params);
}

- (void)getInfoFromNative:(id)params :(void(^)(id response))callBack{
    NSLog(@"params %@",params);
    NSString *str = @"'Hi Jack!'";
    callBack(str);

}

- (void)newGetInfoFromNative:(id)params :(void(^)(id response))successCallBack :(void(^)(id response))failureCallBack{
    NSLog(@"newGetInfoFromNative %@",params);
    if (successCallBack) {
        successCallBack(@"success !!!");
    }
    if (failureCallBack) {
        failureCallBack(@"failure !!!");
    }
}
@end
