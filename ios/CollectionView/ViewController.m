/*
Copyright (C) 2015 Apple Inc. All Rights Reserved.
See LICENSE.txt for this sample’s licensing information

Abstract:
The primary view controller for this app.
*/

#import "ViewController.h"
#import "DetailViewController.h"
#import "Cell.h"

#import "com/example/android/displayingbitmaps/provider/Images.h"
#import "com/example/android/displayingbitmaps/util/ImageCache.h"
#import "com/example/android/displayingbitmaps/util/ImageFetcher.h"
#import "com/example/android/displayingbitmaps/util/MemoryImageCache.h"
#import "com/example/android/displayingbitmaps/util/MemoryImageCacheFactory.h"

#import "J2OConnectionChecker.h"
#import "J2OBitmapFactory.h"
#import "J2OBitmap.h"
#import "J2OBitmapDrawableFactory.h"
#import "J2ODiskEnvironment.h"
#import "J2OThreadOperation.h"
#import "J2OImageView.h"

NSString *kDetailedViewControllerID = @"DetailView";    // view controller storyboard id
NSString *kCellID = @"cellID";                          // UICollectionViewCell storyboard id

const int kThumbnailSize = 100;
const int kThumbnailSpacing = 1;

@interface ViewController()
<ComExampleAndroidDisplayingbitmapsUtilImageCache_ObjectHolder,
ComExampleAndroidDisplayingbitmapsUtilImageCache_ObjectHolderFactory,
ComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory>

@property NSObject *cacheObject;

@property ComExampleAndroidDisplayingbitmapsUtilImageFetcher *imageFetcher;

@end


@implementation ViewController

- (void)viewDidLoad
{
    // setup button
    UIBarButtonItem *clearCacheButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:@selector(clearCache)];
    [self.navigationItem setRightBarButtonItem:clearCacheButton];

    [ComExampleAndroidDisplayingbitmapsProviderImages initialize];
}

- (void)viewWillAppear:(BOOL)animated
{
    // setup image fetcher
    self.imageFetcher = [[ComExampleAndroidDisplayingbitmapsUtilImageFetcher alloc]
                         initWithComExampleAndroidDisplayingbitmapsUtilImageFetcher_ConnectionChecker:[[J2OConnectionChecker alloc] init] withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapFactory:[[J2OBitmapFactory alloc] init]
                         withComExampleAndroidDisplayingbitmapsUtilAbstractBitmapDrawableFactory:[[J2OBitmapDrawableFactory alloc] init]withComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory:self
                         withComExampleAndroidDisplayingbitmapsUtilDiskEnvironment:[[J2ODiskEnvironment alloc] init]
                         withComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation:[[J2OThreadOperation alloc] init]
                         withInt:kThumbnailSize];
    
    // set image cachec dir
    ComExampleAndroidDisplayingbitmapsUtilImageCache_ImageCacheParams *params =
    [[ComExampleAndroidDisplayingbitmapsUtilImageCache_ImageCacheParams alloc] initWithComExampleAndroidDisplayingbitmapsUtilDiskEnvironment:[[J2ODiskEnvironment alloc] init] withNSString:@"thumbs"];
    
    // Set memory cache to 25% of app memory
    [params setMemCacheSizePercentWithFloat:0.25f];
    
    
    UIImage *backgroundImage = [UIImage imageNamed:@"empty_photo.png"];
    [self.imageFetcher setLoadingImageWithComExampleAndroidDisplayingbitmapsUtilAbstractBitmap:[[J2OBitmap alloc] initWithImage:backgroundImage]];
    [self.imageFetcher addImageCacheWithComExampleAndroidDisplayingbitmapsUtilImageCache_ObjectHolderFactory:self withComExampleAndroidDisplayingbitmapsUtilImageCache_ImageCacheParams:params];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [self.imageFetcher closeCache];

    [super viewDidDisappear:animated];
}


- (void)viewDidAppear:(BOOL)animated
{
    [self.imageFetcher setExitTasksEarlyWithBoolean:NO];

    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    [self.imageFetcher setPauseWorkWithBoolean:NO];
    [self.imageFetcher setExitTasksEarlyWithBoolean:YES];
    [self.imageFetcher flushCache];
}

- (void)willTransitionToTraitCollection:(UITraitCollection *)newCollection withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
{
    [super willTransitionToTraitCollection:newCollection withTransitionCoordinator:coordinator];
    [self.collectionView.collectionViewLayout invalidateLayout];
}

- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section;
{
    return [ComExampleAndroidDisplayingbitmapsProviderImages_imageThumbUrls_ length];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath;
{
    // we're going to use a custom UICollectionViewCell, which will hold an image
    Cell *cell = [cv dequeueReusableCellWithReuseIdentifier:kCellID forIndexPath:indexPath];
    
    [self.imageFetcher
     loadImageWithId:[ComExampleAndroidDisplayingbitmapsProviderImages_imageThumbUrls_ objectAtIndex:indexPath.row]
     withComExampleAndroidDisplayingbitmapsUtilAbstractImageView:[[J2OImageView alloc] initWithImageView:cell.image]];
    
    return cell;
}

// the user tapped a collection item, load and set the image on the detail view controller
//
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    /*
    if ([segue.identifier isEqualToString:@"showDetail"])
    {
        NSIndexPath *selectedIndexPath = [self.collectionView indexPathsForSelectedItems][0];
        
        // load the image, to prevent it from being cached we use 'initWithContentsOfFile'
        NSString *imageNameToLoad = [NSString stringWithFormat:@"%ld_full", (long)selectedIndexPath.row];
        UIImage *image = [UIImage imageNamed:imageNameToLoad];
        DetailViewController *detailViewController = segue.destinationViewController;
        detailViewController.image = image;
    }
     */
}


- (void)clearCache
{
    [self.imageFetcher clearCache];
}

#pragma mark -
#pragma mark UICollectionViewDelegateFlowLayout

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(nonnull UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    CGRect bounds = [collectionView bounds];

    int parentWidth = bounds.size.width;
    
    int numColums = (int)floorf((float) parentWidth / (kThumbnailSize + kThumbnailSpacing));

    int cellWidth = (parentWidth / numColums) - kThumbnailSpacing;

    return CGSizeMake(cellWidth, cellWidth);
}

#pragma mark -
#pragma mark ComExampleAndroidDisplayingbitmapsUtilImageCache_ObjectHolder

- (id<ComExampleAndroidDisplayingbitmapsUtilImageCache_ObjectHolder>)getObjectHolderInstance
{
    return self;
}

- (id)getObject
{
    return self.cacheObject;
}

- (void)setObjectWithId:(id)object
{
    self.cacheObject = object;
}


#pragma mark -
#pragma mark ComExampleAndroidDisplayingbitmapsUtilMemoryImageCacheFactory

- (ComExampleAndroidDisplayingbitmapsUtilMemoryImageCache *)createMemoryImageCacheWithInt:(jint)maxSize
{
    return [[ComExampleAndroidDisplayingbitmapsUtilMemoryImageCache alloc] initWithInt:maxSize];
}


@end
