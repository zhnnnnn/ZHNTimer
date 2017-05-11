# ZHNTimer
使用方法
#### 1.初始化定时器
```
+ (ZHNTimer *)zhn_timerWIthTimeInterval:(NSTimeInterval)seconds
                                repeats:(BOOL)repeats
                                  queue:(dispatch_queue_t)queue
                                handler:(zhn_repeatHandlerBlock)handler;
```

#### 2.控制器持有定时器

#### 3.开始定时器
```
- (void)fire;
```
