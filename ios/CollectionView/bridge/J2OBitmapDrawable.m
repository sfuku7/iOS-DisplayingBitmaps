//
//  IOSBitmapDrawable.m
//  CollectionView
//
//  Created by 福田 真哉 on 2016/02/02.
//
//

#import "J2OBitmapDrawable.h"
#import "J2OBitmap.h"

@interface J2OBitmapDrawable()

@property(nonatomic, readonly) id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap> bitmap;

@end

@implementation J2OBitmapDrawable

- (instancetype)initWithImage:(UIImage *)image
{
    self = [super init];
    if (self != nil) {
        _image = image;
        _bitmap = [[J2OBitmap alloc] initWithImage:image];
    }

    return self;
}

- (id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap>)getBitmap
{
    return self.bitmap;
}


@end
