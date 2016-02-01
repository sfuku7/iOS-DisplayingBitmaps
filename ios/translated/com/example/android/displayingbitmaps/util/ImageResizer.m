//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/Application/src/shared/java//com/example/android/displayingbitmaps/util/ImageResizer.java
//

#include "J2ObjC_source.h"
#include "com/example/android/common/logger/Log.h"
#include "com/example/android/displayingbitmaps/util/AbstractBitmap.h"
#include "com/example/android/displayingbitmaps/util/AbstractBitmapDrawableFactory.h"
#include "com/example/android/displayingbitmaps/util/AbstractBitmapFactory.h"
#include "com/example/android/displayingbitmaps/util/AsyncTask.h"
#include "com/example/android/displayingbitmaps/util/DiskEnvironment.h"
#include "com/example/android/displayingbitmaps/util/ImageCache.h"
#include "com/example/android/displayingbitmaps/util/ImageResizer.h"
#include "com/example/android/displayingbitmaps/util/ImageWorker.h"
#include "com/example/android/displayingbitmaps/util/MemoryImageCacheFactory.h"
#include "java/lang/Integer.h"

@interface ComExampleAndroidDisplayingbitmapsUtilImageResizer ()

- (id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap>)processBitmapWithInt:(jint)resId;

@end

static NSString *ComExampleAndroidDisplayingbitmapsUtilImageResizer_TAG_ = @"ImageResizer";
J2OBJC_STATIC_FIELD_GETTER(ComExampleAndroidDisplayingbitmapsUtilImageResizer, TAG_, NSString *)

__attribute__((unused)) static id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap> ComExampleAndroidDisplayingbitmapsUtilImageResizer_processBitmapWithInt_(ComExampleAndroidDisplayingbitmapsUtilImageResizer *self, jint resId);

@implementation ComExampleAndroidDisplayingbitmapsUtilImageResizer

- (instancetype)initWithComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory:(id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory>)bitmapFactory
            withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory:(id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory>)bitmapDrawableFactory
                  withComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory:(id<ComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory>)memoryImageCacheFactory
                          withComExampleAndroidDisplayingbitmapsUtilDiskEnvironment:(ComExampleAndroidDisplayingbitmapsUtilDiskEnvironment *)diskEnvironment
                withComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation:(id<ComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation>)accessor
                                                                            withInt:(jint)imageWidth
                                                                            withInt:(jint)imageHeight {
  ComExampleAndroidDisplayingbitmapsUtilImageResizer_initWithComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory_withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory_withComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory_withComExampleAndroidDisplayingbitmapsUtilDiskEnvironment_withComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation_withInt_withInt_(self, bitmapFactory, bitmapDrawableFactory, memoryImageCacheFactory, diskEnvironment, accessor, imageWidth, imageHeight);
  return self;
}

- (instancetype)initWithComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory:(id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory>)bitmapFactory
            withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory:(id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory>)bitmapDrawableFactory
                  withComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory:(id<ComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory>)memoryImageCacheFactory
                          withComExampleAndroidDisplayingbitmapsUtilDiskEnvironment:(ComExampleAndroidDisplayingbitmapsUtilDiskEnvironment *)diskEnvironment
                withComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation:(id<ComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation>)accessor
                                                                            withInt:(jint)imageSize {
  ComExampleAndroidDisplayingbitmapsUtilImageResizer_initWithComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory_withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory_withComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory_withComExampleAndroidDisplayingbitmapsUtilDiskEnvironment_withComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation_withInt_(self, bitmapFactory, bitmapDrawableFactory, memoryImageCacheFactory, diskEnvironment, accessor, imageSize);
  return self;
}

- (void)setImageSizeWithInt:(jint)width
                    withInt:(jint)height {
  mImageWidth_ = width;
  mImageHeight_ = height;
}

- (void)setImageSizeWithInt:(jint)size {
  [self setImageSizeWithInt:size withInt:size];
}

- (id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap>)processBitmapWithInt:(jint)resId {
  return ComExampleAndroidDisplayingbitmapsUtilImageResizer_processBitmapWithInt_(self, resId);
}

- (id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap>)processBitmapWithId:(id)data {
  return ComExampleAndroidDisplayingbitmapsUtilImageResizer_processBitmapWithInt_(self, JavaLangInteger_parseIntWithNSString_(NSString_valueOf_(data)));
}

+ (jint)calculateInSampleSizeWithInt:(jint)width
                             withInt:(jint)height
                             withInt:(jint)reqWidth
                             withInt:(jint)reqHeight {
  return ComExampleAndroidDisplayingbitmapsUtilImageResizer_calculateInSampleSizeWithInt_withInt_withInt_withInt_(width, height, reqWidth, reqHeight);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory:withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory:withComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory:withComExampleAndroidDisplayingbitmapsUtilDiskEnvironment:withComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation:withInt:withInt:", "ImageResizer", NULL, 0x1, NULL, NULL },
    { "initWithComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory:withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory:withComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory:withComExampleAndroidDisplayingbitmapsUtilDiskEnvironment:withComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation:withInt:", "ImageResizer", NULL, 0x1, NULL, NULL },
    { "setImageSizeWithInt:withInt:", "setImageSize", "V", 0x1, NULL, NULL },
    { "setImageSizeWithInt:", "setImageSize", "V", 0x1, NULL, NULL },
    { "processBitmapWithInt:", "processBitmap", "Lcom.example.android.displayingbitmaps.util.AbstractBitmap;", 0x2, NULL, NULL },
    { "processBitmapWithId:", "processBitmap", "Lcom.example.android.displayingbitmaps.util.AbstractBitmap;", 0x4, NULL, NULL },
    { "calculateInSampleSizeWithInt:withInt:withInt:withInt:", "calculateInSampleSize", "I", 0x9, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "TAG_", NULL, 0x1a, "Ljava.lang.String;", &ComExampleAndroidDisplayingbitmapsUtilImageResizer_TAG_, NULL, .constantValue.asLong = 0 },
    { "mImageWidth_", NULL, 0x4, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "mImageHeight_", NULL, 0x4, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ComExampleAndroidDisplayingbitmapsUtilImageResizer = { 2, "ImageResizer", "com.example.android.displayingbitmaps.util", NULL, 0x1, 7, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComExampleAndroidDisplayingbitmapsUtilImageResizer;
}

@end

void ComExampleAndroidDisplayingbitmapsUtilImageResizer_initWithComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory_withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory_withComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory_withComExampleAndroidDisplayingbitmapsUtilDiskEnvironment_withComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation_withInt_withInt_(ComExampleAndroidDisplayingbitmapsUtilImageResizer *self, id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory> bitmapFactory, id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory> bitmapDrawableFactory, id<ComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory> memoryImageCacheFactory, ComExampleAndroidDisplayingbitmapsUtilDiskEnvironment *diskEnvironment, id<ComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation> accessor, jint imageWidth, jint imageHeight) {
  ComExampleAndroidDisplayingbitmapsUtilImageWorker_initWithComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory_withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory_withComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory_withComExampleAndroidDisplayingbitmapsUtilDiskEnvironment_withComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation_(self, bitmapFactory, bitmapDrawableFactory, memoryImageCacheFactory, diskEnvironment, accessor);
  [self setImageSizeWithInt:imageWidth withInt:imageHeight];
}

ComExampleAndroidDisplayingbitmapsUtilImageResizer *new_ComExampleAndroidDisplayingbitmapsUtilImageResizer_initWithComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory_withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory_withComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory_withComExampleAndroidDisplayingbitmapsUtilDiskEnvironment_withComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation_withInt_withInt_(id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory> bitmapFactory, id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory> bitmapDrawableFactory, id<ComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory> memoryImageCacheFactory, ComExampleAndroidDisplayingbitmapsUtilDiskEnvironment *diskEnvironment, id<ComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation> accessor, jint imageWidth, jint imageHeight) {
  ComExampleAndroidDisplayingbitmapsUtilImageResizer *self = [ComExampleAndroidDisplayingbitmapsUtilImageResizer alloc];
  ComExampleAndroidDisplayingbitmapsUtilImageResizer_initWithComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory_withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory_withComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory_withComExampleAndroidDisplayingbitmapsUtilDiskEnvironment_withComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation_withInt_withInt_(self, bitmapFactory, bitmapDrawableFactory, memoryImageCacheFactory, diskEnvironment, accessor, imageWidth, imageHeight);
  return self;
}

void ComExampleAndroidDisplayingbitmapsUtilImageResizer_initWithComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory_withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory_withComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory_withComExampleAndroidDisplayingbitmapsUtilDiskEnvironment_withComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation_withInt_(ComExampleAndroidDisplayingbitmapsUtilImageResizer *self, id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory> bitmapFactory, id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory> bitmapDrawableFactory, id<ComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory> memoryImageCacheFactory, ComExampleAndroidDisplayingbitmapsUtilDiskEnvironment *diskEnvironment, id<ComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation> accessor, jint imageSize) {
  ComExampleAndroidDisplayingbitmapsUtilImageWorker_initWithComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory_withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory_withComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory_withComExampleAndroidDisplayingbitmapsUtilDiskEnvironment_withComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation_(self, bitmapFactory, bitmapDrawableFactory, memoryImageCacheFactory, diskEnvironment, accessor);
  [self setImageSizeWithInt:imageSize];
}

ComExampleAndroidDisplayingbitmapsUtilImageResizer *new_ComExampleAndroidDisplayingbitmapsUtilImageResizer_initWithComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory_withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory_withComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory_withComExampleAndroidDisplayingbitmapsUtilDiskEnvironment_withComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation_withInt_(id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory> bitmapFactory, id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory> bitmapDrawableFactory, id<ComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory> memoryImageCacheFactory, ComExampleAndroidDisplayingbitmapsUtilDiskEnvironment *diskEnvironment, id<ComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation> accessor, jint imageSize) {
  ComExampleAndroidDisplayingbitmapsUtilImageResizer *self = [ComExampleAndroidDisplayingbitmapsUtilImageResizer alloc];
  ComExampleAndroidDisplayingbitmapsUtilImageResizer_initWithComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory_withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory_withComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory_withComExampleAndroidDisplayingbitmapsUtilDiskEnvironment_withComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation_withInt_(self, bitmapFactory, bitmapDrawableFactory, memoryImageCacheFactory, diskEnvironment, accessor, imageSize);
  return self;
}

id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap> ComExampleAndroidDisplayingbitmapsUtilImageResizer_processBitmapWithInt_(ComExampleAndroidDisplayingbitmapsUtilImageResizer *self, jint resId) {
  {
    ComExampleAndroidCommonLoggerLog_dWithNSString_withNSString_(ComExampleAndroidDisplayingbitmapsUtilImageResizer_TAG_, JreStrcat("$I", @"processBitmap - ", resId));
  }
  return [((id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory>) nil_chk(self->mBitmapFactory_)) decodeSampledBitmapFromResourceWithInt:resId withInt:self->mImageWidth_ withInt:self->mImageHeight_ withComExampleAndroidDisplayingbitmapsUtilImageCache:[self getImageCache]];
}

jint ComExampleAndroidDisplayingbitmapsUtilImageResizer_calculateInSampleSizeWithInt_withInt_withInt_withInt_(jint width, jint height, jint reqWidth, jint reqHeight) {
  ComExampleAndroidDisplayingbitmapsUtilImageResizer_initialize();
  jint inSampleSize = 1;
  if (height > reqHeight || width > reqWidth) {
    jint halfHeight = height / 2;
    jint halfWidth = width / 2;
    while ((halfHeight / inSampleSize) > reqHeight && (halfWidth / inSampleSize) > reqWidth) {
      inSampleSize *= 2;
    }
    jlong totalPixels = width * height / inSampleSize;
    jlong totalReqPixelsCap = reqWidth * reqHeight * 2;
    while (totalPixels > totalReqPixelsCap) {
      inSampleSize *= 2;
      totalPixels /= 2;
    }
  }
  return inSampleSize;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComExampleAndroidDisplayingbitmapsUtilImageResizer)