//
//  J2OThreadOperation.m
//  CollectionView
//
//  Created by 福田 真哉 on 2016/02/02.
//
//

#import "J2OThreadOperation.h"


@implementation J2OThreadOperation

- (void)setThreadPriorityWithComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation_PriorityEnum:(ComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation_PriorityEnum *)priority
{
    double iosPriority = 0.6;

    if ([priority compareToWithId:ComExampleAndroidDisplayingbitmapsUtilAsyncTask_ThreadOperation_PriorityEnum_THREAD_PRIORITY_BACKGROUND]) {
        iosPriority = 0.5;
    }

    [NSThread setThreadPriority:iosPriority];
}

- (void)publishProgressWithComExampleAndroidDisplayingbitmapsUtilAsyncTask:(ComExampleAndroidDisplayingbitmapsUtilAsyncTask *)task
                                                         withNSObjectArray:(IOSObjectArray *)values
{
    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
        [task onProgressUpdateWithNSObjectArray:values];
    }];
}

- (void)postResultWithComExampleAndroidDisplayingbitmapsUtilAsyncTask:(ComExampleAndroidDisplayingbitmapsUtilAsyncTask *)task
                                                               withId:(id)result
{
    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
        [task finishWithId:result];
    }];
}


@end
