//
//  J2OBitmapDrawableFactory.m
//  CollectionView
//
//  Created by 福田 真哉 on 2016/02/02.
//
//

#import "J2OBitmapDrawableFactory.h"

#import "J2OBitmap.h"
#import "J2OBitmapDrawable.h"

@implementation J2OBitmapDrawableFactory

- (id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawable>)createAbstractBitmapDrawableWithComExampleAndroidDisplayingbitmapsUtilAbstractBitmap:(id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap>)bitmap
{
    if (![bitmap isKindOfClass:[J2OBitmap class]]) {
        return nil;
    }

    J2OBitmap *j2obitmap = (J2OBitmap *)bitmap;

    return [[J2OBitmapDrawable alloc] initWithImage:j2obitmap.image];
}

@end
