
#import <Foundation/Foundation.h>
#import "com/example/android/displayingbitmaps/util/AbstractBitmap.h"

@interface J2OBitmap : NSObject<ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap>

@property(nonatomic, readonly) UIImage *image;

- (instancetype)initWithImage:(UIImage *)image;

@end
