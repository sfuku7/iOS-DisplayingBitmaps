//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/Application/src/shared/java//com/example/android/displayingbitmaps/util/MemoryImageCache.java
//

#include "J2ObjC_source.h"
#include "android/support/v4/util/LruCache.h"
#include "com/example/android/displayingbitmaps/util/AbstractBitmap.h"
#include "com/example/android/displayingbitmaps/util/AbstractBitmapDrawable.h"
#include "com/example/android/displayingbitmaps/util/MemoryImageCache.h"

@implementation ComExampleAndroidDisplayingbitmapsUtilMemoryImageCache

- (instancetype)initWithAndroidSupportV4UtilLruCache:(AndroidSupportV4UtilLruCache *)cache {
  ComExampleAndroidDisplayingbitmapsUtilMemoryImageCache_initWithAndroidSupportV4UtilLruCache_(self, cache);
  return self;
}

- (instancetype)initWithInt:(jint)maxSize {
  ComExampleAndroidDisplayingbitmapsUtilMemoryImageCache_initWithInt_(self, maxSize);
  return self;
}

- (id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawable>)putWithNSString:(NSString *)key
                   withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawable:(id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawable>)value {
  @synchronized(self) {
    return [((AndroidSupportV4UtilLruCache *) nil_chk(mMemoryCache_)) putWithId:key withId:value];
  }
}

- (id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawable>)getWithNSString:(NSString *)key {
  @synchronized(self) {
    return [((AndroidSupportV4UtilLruCache *) nil_chk(mMemoryCache_)) getWithId:key];
  }
}

- (void)evictAll {
  @synchronized(self) {
    [((AndroidSupportV4UtilLruCache *) nil_chk(mMemoryCache_)) evictAll];
  }
}

- (id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap>)getBitmapFromReusableSetWithId:(id)optionsPlatformDepend {
  @synchronized(self) {
    return nil;
  }
}

- (void)dealloc {
  RELEASE_(mMemoryCache_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithAndroidSupportV4UtilLruCache:", "MemoryImageCache", NULL, 0x0, NULL, NULL },
    { "initWithInt:", "MemoryImageCache", NULL, 0x0, NULL, NULL },
    { "putWithNSString:withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawable:", "put", "Lcom.example.android.displayingbitmaps.util.AbstractBitmapDrawable;", 0x20, NULL, NULL },
    { "getWithNSString:", "get", "Lcom.example.android.displayingbitmaps.util.AbstractBitmapDrawable;", 0x20, NULL, NULL },
    { "evictAll", NULL, "V", 0x20, NULL, NULL },
    { "getBitmapFromReusableSetWithId:", "getBitmapFromReusableSet", "Lcom.example.android.displayingbitmaps.util.AbstractBitmap;", 0x20, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "mMemoryCache_", NULL, 0x4, "Landroid.support.v4.util.LruCache;", NULL, "Landroid/support/v4/util/LruCache<Ljava/lang/String;Lcom/example/android/displayingbitmaps/util/AbstractBitmapDrawable;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ComExampleAndroidDisplayingbitmapsUtilMemoryImageCache = { 2, "MemoryImageCache", "com.example.android.displayingbitmaps.util", NULL, 0x1, 6, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComExampleAndroidDisplayingbitmapsUtilMemoryImageCache;
}

@end

void ComExampleAndroidDisplayingbitmapsUtilMemoryImageCache_initWithAndroidSupportV4UtilLruCache_(ComExampleAndroidDisplayingbitmapsUtilMemoryImageCache *self, AndroidSupportV4UtilLruCache *cache) {
  NSObject_init(self);
  JreStrongAssign(&self->mMemoryCache_, cache);
}

ComExampleAndroidDisplayingbitmapsUtilMemoryImageCache *new_ComExampleAndroidDisplayingbitmapsUtilMemoryImageCache_initWithAndroidSupportV4UtilLruCache_(AndroidSupportV4UtilLruCache *cache) {
  ComExampleAndroidDisplayingbitmapsUtilMemoryImageCache *self = [ComExampleAndroidDisplayingbitmapsUtilMemoryImageCache alloc];
  ComExampleAndroidDisplayingbitmapsUtilMemoryImageCache_initWithAndroidSupportV4UtilLruCache_(self, cache);
  return self;
}

void ComExampleAndroidDisplayingbitmapsUtilMemoryImageCache_initWithInt_(ComExampleAndroidDisplayingbitmapsUtilMemoryImageCache *self, jint maxSize) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->mMemoryCache_, new_AndroidSupportV4UtilLruCache_initWithInt_(maxSize));
}

ComExampleAndroidDisplayingbitmapsUtilMemoryImageCache *new_ComExampleAndroidDisplayingbitmapsUtilMemoryImageCache_initWithInt_(jint maxSize) {
  ComExampleAndroidDisplayingbitmapsUtilMemoryImageCache *self = [ComExampleAndroidDisplayingbitmapsUtilMemoryImageCache alloc];
  ComExampleAndroidDisplayingbitmapsUtilMemoryImageCache_initWithInt_(self, maxSize);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComExampleAndroidDisplayingbitmapsUtilMemoryImageCache)