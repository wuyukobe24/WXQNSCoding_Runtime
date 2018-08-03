# WXQNSCoding_Runtime
Runtime实现iOS对象的归档和解档
核心代码：

```
//归档
- (void)encoder:(NSCoder *)aCoder {
    unsigned int count = 0;
    Ivar * ivars = class_copyIvarList([self class], &count);
    for (int i=0; i<count; i++) {
        Ivar ivar = ivars[i];
        NSString * key = [NSString stringWithUTF8String:ivar_getName(ivar)];
        id value = [self valueForKey:key];
        [aCoder encodeObject:value forKey:key];
    }
    //在OC中使用了Copy、Creat、New类型的函数，需要释放指针！（注：ARC管不了C函数）
    free(ivars);
}
```
```
//解档
- (void)decoder:(NSCoder *)aDecoder {
    unsigned int count = 0;
    Ivar * ivars = class_copyIvarList([self class], &count);
    for (int i=0; i<count; i++) {
        Ivar ivar = ivars[i];
        NSString * key = [NSString stringWithUTF8String:ivar_getName(ivar)];
        id value = [aDecoder decodeObjectForKey:key];
        [self setValue:value forKey:key];
    }
    free(ivars);
}
```
