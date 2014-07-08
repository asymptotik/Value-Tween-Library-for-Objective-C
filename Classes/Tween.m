//
//  Tween.m
//  EasingTest
//
//  Created by Takahashi Nobuhiro on 2012/12/19.
//  Copyright (c) 2012年 Takahashi Nobuhiro. All rights reserved.
//

#import "Tween.h"

double easeNone(double t, double b, double c, double d);
double easeInQuad(double t, double b, double c, double d);
double easeOutQuad(double t, double b, double c, double d);
double easeInOutQuad(double t, double b, double c, double d);
double easeInCubic(double t, double b, double c, double d);
double easeOutCubic(double t, double b, double c, double d);
double easeInOutCubic(double t, double b, double c, double d);
double easeInQuart(double t, double b, double c, double d);
double easeOutQuart(double t, double b, double c, double d);
double easeInOutQuart(double t, double b, double c, double d);
double easeInQuint(double t, double b, double c, double d);
double easeOutQuint(double t, double b, double c, double d);
double easeInOutQuint(double t, double b, double c, double d);
double easeInSine(double t, double b, double c, double d);
double easeOutSine(double t, double b, double c, double d);
double easeInOutSine(double t, double b, double c, double d);
double easeInExpo(double t, double b, double c, double d);
double easeOutExpo(double t, double b, double c, double d);
double easeInOutExpo(double t, double b, double c, double d);
double easeInCirc(double t, double b, double c, double d);
double easeOutCirc(double t, double b, double c, double d);
double easeInOutCirc(double t, double b, double c, double d);
double easeInElastic(double t, double b, double c, double d);
double easeOutElastic(double t, double b, double c, double d);
double easeInOutElastic(double t, double b, double c, double d);
double easeInBack(double t, double b, double c, double d);
double easeOutBack(double t, double b, double c, double d);
double easeInOutBack(double t, double b, double c, double d);
double easeInBounce(double t, double b, double c, double d);
double easeOutBounce(double t, double b, double c, double d);
double easeInOutBounce(double t, double b, double c, double d);

double easeNone(double t, double b, double c, double d)
{
    return c*t/d + b;
}

double easeInQuad(double t, double b, double c, double d)
{
    t /= d;
    return c*t*t + b;
}

double easeOutQuad(double t, double b, double c, double d)
{
    t /= d;
    return -c *t*(t-2) + b;
}

double easeInOutQuad(double t, double b, double c, double d)
{
    t /= d/2;
    if (t < 1) {
        return c/2*t*t + b;
    }
    t--;
    return -c/2 * (t*(t-2) - 1) + b;
}

double easeInCubic(double t, double b, double c, double d)
{
    t/=d;
    return c*t*t*t + b;
}

double easeOutCubic(double t, double b, double c, double d)
{
    t = t/d-1;
    return c*(t*t*t + 1) + b;
}

double easeInOutCubic(double t, double b, double c, double d)
{
    t /= d/2;
    if (t < 1) {
        return c/2*t*t*t + b;
    }
    
    t -= 2;
    return c/2*(t*t*t + 2) + b;
}

double easeInQuart(double t, double b, double c, double d)
{
    t /= d;
    return c*t*t*t*t + b;
}

double easeOutQuart(double t, double b, double c, double d)
{
    t = t/d-1;
    return -c * (t*t*t*t - 1) + b;
}

double easeInOutQuart(double t, double b, double c, double d)
{
    t /= d/2;
    if (t < 1) {
        return c/2*t*t*t*t + b;
    }
    
    t-=2;
    return -c/2 * (t*t*t*t - 2) + b;
}

double easeInQuint(double t, double b, double c, double d)
{
    t /= d;
    return c*t*t*t*t*t + b;
}

double easeOutQuint(double t, double b, double c, double d)
{
    t = t/d-1;
    return c*(t*t*t*t*t + 1) + b;
}

double easeInOutQuint(double t, double b, double c, double d)
{
    t /= d/2;
    if(t < 1) {
        return c/2*t*t*t*t*t + b;
    }
    t -= 2;
    return c/2*(t*t*t*t*t + 2) + b;
}

double easeInSine(double t, double b, double c, double d)
{
    return -c * cos(t/d * (3.1419/2)) + c + b;
}

double easeOutSine(double t, double b, double c, double d)
{
    return c * sin(t/d * (3.1419/2)) + b;
}

double easeInOutSine(double t, double b, double c, double d)
{
    return -c/2 * (cos(3.1419*t/d) - 1) + b;
}

double easeInExpo(double t, double b, double c, double d)
{
    return (t==0) ? b : c * pow(2, 10 * (t/d - 1)) + b;
}

double easeOutExpo(double t, double b, double c, double d)
{
    return (t==d) ? b+c : c * (-pow(2, -10 * t/d) + 1) + b;
}

double easeInOutExpo(double t, double b, double c, double d)
{
    if (t==0) return b;
    if (t==d) return b+c;
    if ((t/=d/2) < 1) return c/2 * pow(2, 10 * (t - 1)) + b;
    return c/2 * (-pow(2, -10 * --t) + 2) + b;
}

double easeInCirc(double t, double b, double c, double d)
{
    t /= d;
    return -c * (sqrt(1 - t*t) - 1) + b;
}

double easeOutCirc(double t, double b, double c, double d)
{
    t = t/d-1;
    return c * sqrt(1 - t*t) + b;
}

double easeInOutCirc(double t, double b, double c, double d)
{
    t /= d/2;
    if (t < 1) {
        return -c/2 * (sqrt(1 - t*t) - 1) + b;
    }
    t-=2;
    return c/2 * (sqrt(1 - t*t) + 1) + b;
}

double easeInElastic(double t, double b, double c, double d)
{
    double s=1.70158;
    double p=0;
    double a=c;
    if (t==0) return b;  if ((t/=d)==1) return b+c;  if (!p) p=d*.3;
    if (a < abs(c)) { a=c; s=p/4; }
    else s = p/(2*3.1419) * asin (c/a);
    t--;
    return -(a*pow(2,10*t) * sin( (t*d-s)*(2*3.1419)/p )) + b;
}

double easeOutElastic(double t, double b, double c, double d)
{
    double s=1.70158;
    double p=0;
    double a=c;
    if (t==0) return b;  if ((t/=d)==1) return b+c;  if (!p) p=d*.3;
    if (a < abs(c)) { a=c; s=p/4; }
    else s = p/(2*3.1419) * asin (c/a);
    return a*pow(2,-10*t) * sin( (t*d-s)*(2*3.1419)/p ) + c + b;
}

double easeInOutElastic(double t, double b, double c, double d)
{
    double s=1.70158;
    double p=0;
    double a=c;
    if (t==0) return b;  if ((t/=d/2)==2) return b+c;  if (!p) p=d*(.3*1.5);
    if (a < abs(c)) { a=c; s=p/4; }
    else s = p/(2*3.1419) * asin (c/a);
    if (t < 1) {
        t--;
        return -.5*(a*pow(2,10*t) * sin( (t*d-s)*(2*3.1419)/p )) + b;
    }
    t--;
    return a*pow(2,-10*t) * sin( (t*d-s)*(2*3.1419)/p )*.5 + c + b;
}

double easeInBack(double t, double b, double c, double d)
{
    double s = 1.70158;
    t /= d;
    return c*t*t*((s+1)*t - s) + b;
}

double easeOutBack(double t, double b, double c, double d)
{
    double s = 1.70158;
    t = t/d-1;
    return c*(t*t*((s+1)*t + s) + 1) + b;
}

double easeInOutBack(double t, double b, double c, double d)
{
    double s = 1.70158;
    double k = 1.525;
    t /= d/2;
    s *= k;
    if (t < 1) {
        return c/2*(t*t*((s+1)*t - s)) + b;
    } else {
        t -= 2;
        return c/2*(t*t*((s+1)*t + s) + 2) + b;
    }
}

double easeInBounce(double t, double b, double c, double d)
{
    return c - easeOutBounce(d-t, 0, c, d) + b;
}

double easeOutBounce(double t, double b, double c, double d)
{
    double k = 2.75;
    if ((t/=d) < (1/k)) {
        return c*(7.5625*t*t) + b;
    } else if (t < (2/k)) {
        t-=1.5/k;
        return c*(7.5625*t*t + .75) + b;
    } else if (t < (2.5/k)) {
        t-=2.25/k;
        return c*(7.5625*t*t + .9375) + b;
    } else {
        t-=2.625/k;
        return c*(7.5625*t*t + .984375) + b;
    }
}

double easeInOutBounce(double t, double b, double c, double d)
{
    if (t < d*.5) return easeOutBounce(t*2, 0, c, d) * .5 + b;
    return easeOutBounce(t*2-d, 0, c, d) * .5 + c*.5 + b;
}

@implementation Tween

static NSTimer* timer_ = nil;
static NSMutableArray *tweens_ = nil;

#pragma mark - public

- (void)clear
{
    [tweens_ removeAllObjects];
    tweens_ = nil;
    
    [timer_ invalidate];
    timer_ = nil;
}

- (TweenObject *)addTween:(id)parent tweenId:(int)tweenId startValue:(double)startValue endValue:(double)endValue time:(double)time delay:(double)delay easing:(NSString *)easing start:(TweenBlock)startBlock update:(TweenBlock)updateBlock end:(TweenBlock)endBlock
{
    return [self addTween:parent
            tweenId:tweenId
         startValue:startValue
           endValue:endValue
               time:time
              delay:delay
             easing:easing
              param:nil
           start:startBlock
          update:updateBlock
             end:endBlock];
}

- (TweenObject *)addTween:(id)parent tweenId:(int)tweenId startValue:(double)startValue endValue:(double)endValue time:(double)time delay:(double)delay easing:(NSString *)easing param:(NSMutableDictionary *)param start:(TweenBlock)startBlock update:(TweenBlock)updateBlock end:(TweenBlock)endBlock
{
    if (timer_ == nil) {
        timer_ = [NSTimer scheduledTimerWithTimeInterval:1.0 / 60.0
                                                       target:self
                                                     selector:@selector(updateAnimations)
                                                     userInfo:nil
                                                      repeats:TRUE];
        tweens_ = [NSMutableArray array];
    }
    
    double currentTime = CACurrentMediaTime();
    
    TweenObject *tween = [[TweenObject alloc] init];
    tween.startValue = startValue;
    tween.endValue = endValue;
    tween.parent = parent;
    tween.tweenId = tweenId;
    tween.time = time;
    tween.delay = delay;
    tween.easing = easing;
    tween.param = param;
    tween.startBlock = startBlock;
    tween.updateBlock = updateBlock;
    tween.endBlock = endBlock;
    tween.startTime = currentTime;
    tween.ended = NO;
    tween.easingFunction = [self getEasingFunction:easing];
    [tweens_ addObject:tween];
    
    return tween;
}

- (void)removeTweenForId:(int)tweenId {
    NSUInteger count = [tweens_ count];
    if(count==0) return;
    
    TweenObject *tweenObj;
    for(int i=0; i<count ; i++ ){
        tweenObj = (TweenObject *) tweens_[i];
        if (tweenObj.tweenId == tweenId){
            tweenObj.ended = YES;
        }
    }
}

- (void)removeTweenForObject:(TweenObject*)tweenObject {
    tweenObject.ended = YES;
}

- (TweenEasingFunction)getEasingFunction:(NSString *)easing
{
    TweenEasingFunction ret = easeNone;
    
    if ([easing isEqualToString:@"easeNone"]) {
        ret = easeNone;
    } else if ([easing isEqualToString:@"easeInQuad"]) {
        ret = easeInQuad;
    } else if ([easing isEqualToString:@"easeOutQuad"]) {
        ret = easeOutQuad;
    } else if ([easing isEqualToString:@"easeInOutQuad"]) {
        ret = easeInOutQuad;
    } else if ([easing isEqualToString:@"easeInCubic"]) {
        ret = easeInCubic;
    } else if ([easing isEqualToString:@"easeOutCubic"]) {
        ret = easeOutCubic;
    } else if ([easing isEqualToString:@"easeInOutCubic"]) {
        ret = easeInOutCubic;
    } else if ([easing isEqualToString:@"easeInQuart"]) {
        ret = easeInQuart;
    } else if ([easing isEqualToString:@"easeOutQuart"]) {
        ret = easeOutQuart;
    } else if ([easing isEqualToString:@"easeInOutQuart"]) {
        ret = easeInOutQuart;
    } else if ([easing isEqualToString:@"easeInQuint"]) {
        ret = easeInQuint;
    } else if ([easing isEqualToString:@"easeOutQuint"]) {
        ret = easeOutQuint;
    } else if ([easing isEqualToString:@"easeInOutQuint"]) {
        ret = easeInOutQuint;
    } else if ([easing isEqualToString:@"easeInSine"]) {
        ret = easeInSine;
    } else if ([easing isEqualToString:@"easeOutSine"]) {
        ret = easeOutSine;
    } else if ([easing isEqualToString:@"easeInOutSine"]) {
        ret = easeInOutSine;
    } else if ([easing isEqualToString:@"easeInExpo"]) {
        ret = easeInExpo;
    } else if ([easing isEqualToString:@"easeOutExpo"]) {
        ret = easeOutExpo;
    } else if ([easing isEqualToString:@"easeInOutExpo"]) {
        ret = easeInOutExpo;
    } else if ([easing isEqualToString:@"easeInCirc"]) {
        ret = easeInCirc;
    } else if ([easing isEqualToString:@"easeOutCirc"]) {
        ret = easeOutCirc;
    } else if ([easing isEqualToString:@"easeInOutCirc"]) {
        ret = easeInOutCirc;
    } else if ([easing isEqualToString:@"easeInElastic"]) {
        ret = easeInElastic;
    } else if ([easing isEqualToString:@"easeOutElastic"]) {
        ret = easeOutElastic;
    } else if ([easing isEqualToString:@"easeInOutElastic"]) {
        ret = easeInOutElastic;
    } else if ([easing isEqualToString:@"easeInBack"]) {
        ret = easeInBack;
    } else if ([easing isEqualToString:@"easeOutBack"]) {
        ret = easeOutBack;
    } else if ([easing isEqualToString:@"easeInOutBack"]) {
        ret = easeInOutBack;
    } else if ([easing isEqualToString:@"easeInBounce"]) {
        ret = easeInBounce;
    } else if ([easing isEqualToString:@"easeOutBounce"]) {
        ret = easeOutBounce;
    } else if ([easing isEqualToString:@"easeInOutBounce"]) {
        ret = easeInOutBounce;
    }
               
    return ret;
}

#pragma mark - private

- (void)updateAnimations {
    double currentTime = CACurrentMediaTime();
    for (TweenObject* tween in tweens_) {
        double delay = tween.delay;
        double t = currentTime - tween.startTime;
        if (t >= delay) {
            
            t = currentTime - delay - tween.startTime;
    
            double d = tween.time;
            double b = tween.startValue;
            double c = tween.endValue - b;
            
            double currentValue = tween.easingFunction(t, b, c, d);
    
            if (!tween.started) {
                tween.currentValue = tween.startValue;
                if (tween.startBlock) {
                    tween.startBlock(self, tween);
                }
                tween.started = YES;
            }
            
            if (t >= d) {
                tween.currentValue = tween.endValue;
                if (tween.endBlock) {
                    tween.endBlock(self, tween);
                }
                tween.ended = YES;
            } else {
                tween.currentValue = currentValue;
                if (tween.updateBlock) {
                    tween.updateBlock(self, tween);
                }
            }
        }
    }

    NSUInteger i = [tweens_ count];
    while (i > 0) {
        TweenObject *tween = [tweens_ objectAtIndex:i-1];
        if (tween.ended) {
            [tweens_ removeObject:tween];
        }
        i--;
    }
}


#pragma mark - easing



@end
