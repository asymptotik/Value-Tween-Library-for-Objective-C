Value Tween Library for Objective-C adopted from
Nobuhiro Takahashi

Performance improvements
Updated to be object methods rather than class methods.

=======

1. link "QuartzCore.framework".
2. copy "Tween.h" "Tween.m" "TweenObject.h" "TweenObject.m" to your project.
3. import "Tween.h" and import "TweenObject.h".
4. call and implement a callback.
5. enjoy!!


Example Usage
=============

```objc
#import "Tween.h"
#import "TweenObject.h"

// Somewhere
Tween *tween = [[Tween alloc] init];

- (IBAction)buttonWasTapped:(id)sender
{
    [tween addTween:self
            tweenId:0
         startValue:10
           endValue:290
               time:2
              delay:0
             easing:@"easeNone"
           start:nil
          update:^(Tween *tween, TweenObject *tweenObject) { self.view.frame  = CGRectMake(tween.currentValue,  5,20,20); }
             end:^(Tween *tween, TweenObject *tweenObject) {  self.view.frame  = CGRectMake(tween.currentValue,  5,20,20); }];
}

```

remove Tween

```
[tween addTween:self tweenId:0 ...
// Remove Tween By tweenId
[tween removeTweenForId:0];

TweenObject *tweenObject = [tween addTween:self tweenId:1 ...
// Remove Tween by TweenObject
[tween removeTweenForObject:tweenObject];
```


Licensed
=============

Copyright (c) 2014 Asymptotik Limited

Licensed under the MIT License


Original License
=============
Licensed under the MIT License

Copyright (c) 2012 Nobuhiro Takahashi

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


Thanks
=============
Thanks mokagio for solve some problems of llvm5 warning.
https://github.com/mokagio

Thanks heart for add methods useful.
https://github.com/heart
