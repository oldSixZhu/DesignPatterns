
#if __has_feature(objc_arc)
#define singleton_h(name) +(instancetype)shared##name;

#define singleton_m(name) static id _instanceType;\
+(instancetype)shared##name\
{\
static dispatch_once_t onceToken;\
dispatch_once(&onceToken, ^{\
_instanceType = [[self alloc]init];\
});\
return _instanceType;\
}\
+(instancetype)allocWithZone:(struct _NSZone *)zone\
{\
static dispatch_once_t onceToken;\
dispatch_once(&onceToken, ^{\
_instanceType = [super allocWithZone:zone];\
});\
return _instanceType;\
}\
-(id)copyWithZone:(NSZone *)zone\
{\
return _instanceType;\
}
#else
#define singleton_h(name) +(instancetype)shared##name;

#define singleton_m(name) static id _instanceType;\
\
+(instancetype)shared##name\
{\
static dispatch_once_t onceToken;\
dispatch_once(&onceToken, ^{\
_instanceType = [[self alloc]init];\
});\
return _instanceType;\
}\
\
+(instancetype)allocWithZone:(struct _NSZone *)zone\
{\
static dispatch_once_t onceToken;\
dispatch_once(&onceToken, ^{\
_instanceType = [super allocWithZone:zone];\
});\
return _instanceType;\
}\
\
-(id)copyWithZone:(NSZone *)zone\
{\
return _instanceType;\
}\
\
-(instancetype)autorelease\
{\
    return _instanceType;\
}\
\
-(instancetype)retain\
{\
    return _instanceType;\
}\
\
-(oneway void)release\
{\
  \
}\
\
-(NSUInteger)retainCount\
{\
    return 1;\
}

#endif






