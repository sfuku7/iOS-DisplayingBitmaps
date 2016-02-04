
#import <Foundation/Foundation.h>
#import "J2OBitmap.h"
#import "java/io/OutputStream.h"
#import "IOSPrimitiveArray.h"

@implementation J2OBitmap

- (instancetype)initWithImage:(UIImage *)image
{
    self = [super init];
    if (self != nil) {
        _image = image;
    }

    return self;
}


- (jboolean)compressWithComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum:(ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum *)format
                                                                                        withInt:(jint)quality
                                                                         withJavaIoOutputStream:(JavaIoOutputStream *)stream
{
    float iOSquality = quality / 100;

    NSData *data = UIImageJPEGRepresentation(self.image, iOSquality);

    if (data == nil) {
        data = UIImagePNGRepresentation(self.image);
    }

    if (data == nil) {
        return NO;
    }

    [stream writeWithByteArray:[IOSByteArray arrayWithNSData:data]];

    return YES;
}


@end