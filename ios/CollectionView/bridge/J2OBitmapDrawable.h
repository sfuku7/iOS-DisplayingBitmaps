//
//  IOSBitmapDrawable.h
//  CollectionView
//
//  Created by 福田 真哉 on 2016/02/02.
//
//

#import <Foundation/Foundation.h>
#import "com/example/android/displayingbitmaps/util/AbstractBitmapDrawable.h"

@interface J2OBitmapDrawable : NSObject<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawable>

@property (nonatomic, readonly) UIImage *image;

- (instancetype) initWithImage:(UIImage *)image;

@end
