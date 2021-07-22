//
//  BaseClass.m
//  BaseClass
//
//  Created by Soleil Yu on 2021/7/22.
//

#import "BaseClass.h"

@implementation BaseClass

- (void)execute {
    [self.handlers enumerateKeysAndObjectsUsingBlock:^(NSString * _Nonnull key, BaseClassCallback  _Nonnull handler, BOOL * _Nonnull stop) {
        if (handler) {
            
            BlockFromThirdParty callback = ^(id data) {
                NSLog(@"callback data: %@", data);
            };
            
            handler(self, @"A Data", callback);
        }
    }];
}

@end
