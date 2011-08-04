//
//  TabBarItemView.h
//  FreeDesignedTabBar2
//
//  Created by プー坊 on 11/08/05.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface TabBarItemView : UIImageView {
    UIImage *_selectedImage;
    UIImage *_unselectedImage;
    BOOL _isSelected;
}

- (id)initWithFrame:(CGRect)frame selectedImage:(UIImage *)selectedImage unselectedImage:(UIImage *)unselectedImage;
- (void)setSelected:(BOOL)selected;
- (BOOL)isSelected;

@end
