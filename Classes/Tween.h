//
//  Tween.h
//  EasingTest
//
//  Created by Takahashi Nobuhiro on 2012/12/19.
//  Copyright (c) 2012年 Takahashi Nobuhiro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>
#import "TweenObject.h"

@interface Tween : NSObject

- (void)clear;
- (TweenObject *)addTween:(id)parent tweenId:(int)tweenId startValue:(double)startValue endValue:(double)endValue time:(double)time delay:(double)delay easing:(NSString *)easing param:(NSMutableDictionary *)param start:(TweenBlock)startBlock update:(TweenBlock)updateBlock end:(TweenBlock)endBlock;

- (TweenObject *)addTween:(id)parent tweenId:(int)tweenId startValue:(double)startValue endValue:(double)endValue time:(double)time delay:(double)delay easing:(NSString *)easing start:(TweenBlock)startBlock update:(TweenBlock)updateBlock end:(TweenBlock)endBlock;

- (void)removeTweenForId:(int)tweenId;
- (void)removeTweenForObject:(TweenObject*)tweenObject;

- (void)updateAnimations;


@end
