//
//  J2ODiskEnvironment.m
//  CollectionView
//
//  Created by 福田 真哉 on 2016/02/02.
//
//

#import "J2ODiskEnvironment.h"

@implementation J2ODiskEnvironment

- (NSString *)getDiskCacheDirPathWithNSString:(NSString *)uniqueName
{
    NSArray *cacheDir = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);

    return [NSString stringWithFormat:@"%@/%@", [cacheDir objectAtIndex:0], uniqueName];
}

- (jlong)getUsableSpaceWithNSString:(NSString *)path
{
    NSError *error = nil;
    NSDictionary *dictionary = [[NSFileManager defaultManager] attributesOfFileSystemForPath:path error:&error];

    NSNumber *freeBytes = [dictionary objectForKey:NSFileSystemFreeSize];
    
    return [freeBytes longLongValue];
}


@end
