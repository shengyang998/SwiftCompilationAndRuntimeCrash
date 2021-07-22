//
//  BaseClass.h
//  BaseClass
//
//  Created by Soleil Yu on 2021/7/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class BaseClass;

typedef void (^BlockFromThirdParty)(id data);

typedef void (^BaseClassCallback)(BaseClass * _Nullable obj, id _Nullable data, BlockFromThirdParty _Nullable block);


@interface BaseClass : NSObject

@property (nonatomic, strong, nullable) NSDictionary<NSString *, BaseClassCallback> * handlers;

- (void)execute;

@end

NS_ASSUME_NONNULL_END
