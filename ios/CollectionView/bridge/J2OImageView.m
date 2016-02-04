//
//  IOSImageView.m
//  CollectionView
//
//  Created by 福田 真哉 on 2016/02/02.
//
//

#import "J2OImageView.h"

#import "J2OBitmap.h"
#import "J2OBitmapDrawable.h"
#import "com/example/android/displayingbitmaps/util/AbstractBitmap.h"


@interface AsyncUIImage : UIImage

@property(weak) ComExampleAndroidDisplayingbitmapsUtilImageWorker_BitmapWorkerTask *bitmapWorkerTask;

- (instancetype)initWithCGImage:(CGImageRef)cgImage scale:(CGFloat)scale orientation:(UIImageOrientation)orientation;

@end

@implementation AsyncUIImage

- (instancetype)initWithCGImage:(CGImageRef)cgImage scale:(CGFloat)scale orientation:(UIImageOrientation)orientation
{
    if (cgImage != nil) {
        self = [super initWithCGImage:cgImage scale:scale orientation:orientation];
    } else {
        self = [super init];
    }

    return self;
}

@end




@interface J2OImageView()

@property (nonatomic, weak) UIImageView *imageView;

@end


@implementation J2OImageView

- (id) initWithImageView:(UIImageView *)imageView
{
    self = [super init];
    if (self != nil) {
        _imageView = imageView;
    }

    return self;
}


- (jboolean)hasOwner
{
    return self.imageView != nil;
}

- (void)setImageDrawableWithComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawable:(id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawable>)d
{
    if (![d isKindOfClass:[J2OBitmapDrawable class]]) {
        return;
    }
    if (self.imageView == nil) {
        return;
    }

    J2OBitmapDrawable *bitmapDrawable = (J2OBitmapDrawable *)d;
    [self.imageView setImage:[bitmapDrawable image]];
}

- (void)setFadeInImageDrawableWithComExampleAndroidDisplayingbitmapsUtilAbstractBitmap:(id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap>)from
                      withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawable:(id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawable>)to
                                                                               withInt:(jint)durationMillis
{
    if (self.imageView == nil) {
        return;
    }

    if (![from isKindOfClass:[J2OBitmap class]]) {
        return;
    }

    if (![to isKindOfClass:[J2OBitmapDrawable class]]) {
        return;
    }

    J2OBitmap *fromBitmap = (J2OBitmap *)from;
    J2OBitmapDrawable *toBitmapDrawable = (J2OBitmapDrawable *)to;

    [self.imageView setImage:fromBitmap.image];
    [UIView transitionWithView:self.imageView
                      duration:(double)durationMillis / 1000
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        [self.imageView setImage:toBitmapDrawable.image];
                    } completion:nil];
}

- (void)setAsyncDrawableWithComExampleAndroidDisplayingbitmapsUtilAbstractBitmap:(id<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap>)loadingBitmap
          withComExampleAndroidDisplayingbitmapsUtilImageWorker_BitmapWorkerTask:(ComExampleAndroidDisplayingbitmapsUtilImageWorker_BitmapWorkerTask *)bitmapWorkerTask
{
    if (self.imageView == nil) {
        return;
    }

    UIImage *uiImage;
    if (loadingBitmap != nil) {
        if(![loadingBitmap isKindOfClass:[J2OBitmap class]]) {
            return;
        }
        uiImage = ((J2OBitmap *)loadingBitmap).image;
    } else {
        uiImage = nil;
    }


    AsyncUIImage *asyncImage = [[AsyncUIImage alloc] initWithCGImage:uiImage.CGImage
                                                              scale:1.0
                                                        orientation:uiImage.imageOrientation];
    asyncImage.bitmapWorkerTask = bitmapWorkerTask;
    
    self.imageView.image = asyncImage;
}

- (ComExampleAndroidDisplayingbitmapsUtilImageWorker_BitmapWorkerTask *)getBitmapWorkerTask
{
    if (self.imageView == nil) {
        return nil;
    }

    UIImage *image = self.imageView.image;
    if (image == nil  || ![image isKindOfClass:[AsyncUIImage class]]) {
        return nil;
    }

    AsyncUIImage *asyncImage = (AsyncUIImage *)image;

    return asyncImage.bitmapWorkerTask;
}


@end



