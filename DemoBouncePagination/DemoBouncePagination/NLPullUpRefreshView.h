//
//  NLPullRefreshView.h
//  NLScrollPagination
//
//  Created by noahlu on 14-8-1.
//  Copyright (c) 2014年 noahlu<codedancerhua@gmail.com>. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NLPullUpRefreshViewDelegate;

@interface NLPullUpRefreshView : UIView
{
    BOOL isDragging;
    BOOL isLoading;
}

@property (nonatomic, weak) id delegate;
@property (nonatomic, strong) UIScrollView *owner;
@property (nonatomic, strong) UILabel *refreshLabel;
@property (nonatomic, strong) UIImageView *refreshArrow;
@property (nonatomic, strong) UIActivityIndicatorView *refreshSpinner;

/**
 *  是否还有更多数据需要加载
 */
@property (nonatomic) BOOL hasMore;

- (void)setupWithOwner:(UIScrollView *)owner delegate:(id<NLPullUpRefreshViewDelegate>)delegate;
- (void)updateOffsetY:(CGFloat)y;

- (void)startLoading;
- (void)stopLoading;

// 拖动过程中
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView;
- (void)scrollViewDidScroll:(UIScrollView *)scrollView;
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView;

@end

@protocol NLPullUpRefreshViewDelegate <NSObject>

- (void)pullUpRefreshDidFinish;
@end
