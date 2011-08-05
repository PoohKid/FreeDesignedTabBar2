//
//  TabBarItemView.m
//  FreeDesignedTabBar2
//
//  Created by プー坊 on 11/08/05.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TabBarItemView.h"


@implementation TabBarItemView

- (id)initWithFrame:(CGRect)frame selectedImage:(UIImage *)selectedImage unselectedImage:(UIImage *)unselectedImage
{
    self = [super initWithFrame:frame];
    if (self) {
        _selectedImage = [selectedImage retain];
        _unselectedImage = [unselectedImage retain];
        [self setSelected:NO];
    }
    return self;
}

- (void)setSelected:(BOOL)selected
{
    _isSelected = selected;
    //self.backgroundColor = _isSelected ? [UIColor redColor] : [UIColor yellowColor]; //画像が無い場合の代用
    self.image = _isSelected ? _selectedImage : _unselectedImage;
}

- (BOOL)isSelected
{
    return _isSelected;
}

- (void)dealloc
{
    [_selectedImage release], _selectedImage = nil;
    [_unselectedImage release], _unselectedImage = nil;

    [super dealloc];
}

@end
