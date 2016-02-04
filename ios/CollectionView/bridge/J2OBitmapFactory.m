//
//  IOSBitmapFactory.m
//  CollectionView
//
//  Created by 福田 真哉 on 2016/02/02.
//
//

#import "J2OBitmapFactory.h"

#import "java/io/FileDescriptor.h"
#import "J2OBitmap.h"

@implementation J2OBitmapFactory
- (id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap>)decodeResourceWithNSString:(NSString *)resId
{
    return [[J2OBitmap alloc] initWithImage:[UIImage imageNamed:resId]];
}

- (id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap>)decodeSampledBitmapFromResourceWithNSString:(NSString *)resId
                                                                                                withInt:(jint)reqWidth
                                                                                                withInt:(jint)reqHeight
                                                   withComExampleAndroidDisplayingbitmapsUtilImageCache:(ComExampleAndroidDisplayingbitmapsUtilImageCache *)cache
{
    // TODO sampling
    return [[J2OBitmap alloc] initWithImage:[UIImage imageNamed:resId]];
}

- (id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap>)decodeSampledBitmapFromFileWithNSString:(NSString *)filename
                                                                                            withInt:(jint)reqWidth
                                                                                            withInt:(jint)reqHeight
                                               withComExampleAndroidDisplayingbitmapsUtilImageCache:(ComExampleAndroidDisplayingbitmapsUtilImageCache *)cache
{
    // TODO sampling
    return [[J2OBitmap alloc] initWithImage:[UIImage imageNamed:filename]];
}

- (id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap>)decodeSampledBitmapFromDescriptorWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)fileDescriptor
                                                                                                              withInt:(jint)reqWidth
                                                                                                              withInt:(jint)reqHeight
                                                                 withComExampleAndroidDisplayingbitmapsUtilImageCache:(ComExampleAndroidDisplayingbitmapsUtilImageCache *)cache
{
    // TODO sampling
    NSFileHandle *fileHandle = [[NSFileHandle alloc] initWithFileDescriptor:[fileDescriptor getInt$] closeOnDealloc:YES];
    UIImage *image = [[UIImage alloc] initWithData:[fileHandle readDataToEndOfFile]];
    return [[J2OBitmap alloc] initWithImage:image];
}


@end
