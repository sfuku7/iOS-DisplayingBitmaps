//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/Application/src/shared/java//com/example/android/displayingbitmaps/util/ImageFetcher.java
//

#ifndef _ComExampleAndroidDisplayingbitmapsUtilImageFetcher_H_
#define _ComExampleAndroidDisplayingbitmapsUtilImageFetcher_H_

#include "J2ObjC_header.h"
#include "com/example/android/displayingbitmaps/util/ImageResizer.h"

@class ComExampleAndroidDisplayingbitmapsUtilDiskEnvironment;
@class JavaIoOutputStream;
@protocol ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap;
@protocol ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory;
@protocol ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory;
@protocol ComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation;
@protocol ComExampleAndroidDisplayingbitmapsUtilImageFetcher_ConnectionChecker;
@protocol ComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory;

@interface ComExampleAndroidDisplayingbitmapsUtilImageFetcher : ComExampleAndroidDisplayingbitmapsUtilImageResizer

#pragma mark Public

- (instancetype)initWithComExampleAndroidDisplayingbitmapsUtilImageFetcher_ConnectionChecker:(id<ComExampleAndroidDisplayingbitmapsUtilImageFetcher_ConnectionChecker>)connectionChecker
                             withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory:(id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory>)bitmapFactory
                     withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory:(id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory>)bitmapDrawableFactory
                           withComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory:(id<ComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory>)memoryImageCacheFactory
                                   withComExampleAndroidDisplayingbitmapsUtilDiskEnvironment:(ComExampleAndroidDisplayingbitmapsUtilDiskEnvironment *)diskEnvironment
                         withComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation:(id<ComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation>)accessor
                                                                                     withInt:(jint)imageSize;

- (instancetype)initWithComExampleAndroidDisplayingbitmapsUtilImageFetcher_ConnectionChecker:(id<ComExampleAndroidDisplayingbitmapsUtilImageFetcher_ConnectionChecker>)connectionChecker
                             withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory:(id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory>)bitmapFactory
                     withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory:(id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory>)bitmapDrawableFactory
                           withComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory:(id<ComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory>)memoryImageCacheFactory
                                   withComExampleAndroidDisplayingbitmapsUtilDiskEnvironment:(ComExampleAndroidDisplayingbitmapsUtilDiskEnvironment *)diskEnvironment
                         withComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation:(id<ComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation>)accessor
                                                                                     withInt:(jint)imageWidth
                                                                                     withInt:(jint)imageHeight;

- (jboolean)downloadUrlToStreamWithNSString:(NSString *)urlString
                     withJavaIoOutputStream:(JavaIoOutputStream *)outputStream;

#pragma mark Protected

- (void)clearCacheInternal;

- (void)closeCacheInternal;

- (void)flushCacheInternal;

- (void)initDiskCacheInternal OBJC_METHOD_FAMILY_NONE;

- (id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap>)processBitmapWithId:(id)data;

@end

J2OBJC_EMPTY_STATIC_INIT(ComExampleAndroidDisplayingbitmapsUtilImageFetcher)

FOUNDATION_EXPORT void ComExampleAndroidDisplayingbitmapsUtilImageFetcher_initWithComExampleAndroidDisplayingbitmapsUtilImageFetcher_ConnectionChecker_withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory_withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory_withComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory_withComExampleAndroidDisplayingbitmapsUtilDiskEnvironment_withComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation_withInt_withInt_(ComExampleAndroidDisplayingbitmapsUtilImageFetcher *self, id<ComExampleAndroidDisplayingbitmapsUtilImageFetcher_ConnectionChecker> connectionChecker, id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory> bitmapFactory, id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory> bitmapDrawableFactory, id<ComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory> memoryImageCacheFactory, ComExampleAndroidDisplayingbitmapsUtilDiskEnvironment *diskEnvironment, id<ComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation> accessor, jint imageWidth, jint imageHeight);

FOUNDATION_EXPORT ComExampleAndroidDisplayingbitmapsUtilImageFetcher *new_ComExampleAndroidDisplayingbitmapsUtilImageFetcher_initWithComExampleAndroidDisplayingbitmapsUtilImageFetcher_ConnectionChecker_withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory_withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory_withComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory_withComExampleAndroidDisplayingbitmapsUtilDiskEnvironment_withComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation_withInt_withInt_(id<ComExampleAndroidDisplayingbitmapsUtilImageFetcher_ConnectionChecker> connectionChecker, id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory> bitmapFactory, id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory> bitmapDrawableFactory, id<ComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory> memoryImageCacheFactory, ComExampleAndroidDisplayingbitmapsUtilDiskEnvironment *diskEnvironment, id<ComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation> accessor, jint imageWidth, jint imageHeight) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComExampleAndroidDisplayingbitmapsUtilImageFetcher_initWithComExampleAndroidDisplayingbitmapsUtilImageFetcher_ConnectionChecker_withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory_withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory_withComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory_withComExampleAndroidDisplayingbitmapsUtilDiskEnvironment_withComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation_withInt_(ComExampleAndroidDisplayingbitmapsUtilImageFetcher *self, id<ComExampleAndroidDisplayingbitmapsUtilImageFetcher_ConnectionChecker> connectionChecker, id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory> bitmapFactory, id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory> bitmapDrawableFactory, id<ComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory> memoryImageCacheFactory, ComExampleAndroidDisplayingbitmapsUtilDiskEnvironment *diskEnvironment, id<ComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation> accessor, jint imageSize);

FOUNDATION_EXPORT ComExampleAndroidDisplayingbitmapsUtilImageFetcher *new_ComExampleAndroidDisplayingbitmapsUtilImageFetcher_initWithComExampleAndroidDisplayingbitmapsUtilImageFetcher_ConnectionChecker_withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory_withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory_withComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory_withComExampleAndroidDisplayingbitmapsUtilDiskEnvironment_withComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation_withInt_(id<ComExampleAndroidDisplayingbitmapsUtilImageFetcher_ConnectionChecker> connectionChecker, id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory> bitmapFactory, id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory> bitmapDrawableFactory, id<ComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory> memoryImageCacheFactory, ComExampleAndroidDisplayingbitmapsUtilDiskEnvironment *diskEnvironment, id<ComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation> accessor, jint imageSize) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComExampleAndroidDisplayingbitmapsUtilImageFetcher)

@protocol ComExampleAndroidDisplayingbitmapsUtilImageFetcher_ConnectionChecker < NSObject, JavaObject >

- (void)checkConnection;

- (void)disableConnectionReuseIfNecessary;

@end

J2OBJC_EMPTY_STATIC_INIT(ComExampleAndroidDisplayingbitmapsUtilImageFetcher_ConnectionChecker)

J2OBJC_TYPE_LITERAL_HEADER(ComExampleAndroidDisplayingbitmapsUtilImageFetcher_ConnectionChecker)

#endif // _ComExampleAndroidDisplayingbitmapsUtilImageFetcher_H_
