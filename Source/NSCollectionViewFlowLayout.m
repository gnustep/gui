/* Implementation of class NSCollectionViewFlowLayout
   Copyright (C) 2021 Free Software Foundation, Inc.
   
   By: Gregory John Casamento
   Date: 30-05-2021

   This file is part of the GNUstep Library.
   
   This library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
   
   This library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
   
   You should have received a copy of the GNU Lesser General Public
   License along with this library; if not, write to the Free
   Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110 USA.
*/

#import "AppKit/NSCollectionViewFlowLayout.h"

@implementation NSCollectionViewFlowLayoutInvalidationContext

- (void) setInvalidateFlowLayoutDelegateMetrics: (BOOL)flag
{
  _invalidateFlowLayoutDelegateMetrics = flag;
}

- (BOOL) invalidateFlowLayoutDelegateMetrics
{
  return _invalidateFlowLayoutDelegateMetrics;
}

- (void) setInvalidateFlowLayoutAttributes: (BOOL)flag
{
  _invalidateFlowLayoutAttributes = flag;
}

- (BOOL) invalidateFlowLayoutAttributes
{
  return _invalidateFlowLayoutAttributes;
}

@end

@implementation NSCollectionViewFlowLayout

- (CGFloat) minimumLineSpacing
{
  return _minimumLineSpacing;
}

- (void) setMinimumLineSpacing: (CGFloat)spacing
{
  _minimumLineSpacing = spacing;
}

- (CGFloat) minimumInteritemSpacing
{
  return _minimumInteritemSpacing;
}

- (void) setMinimumInteritemSpacing: (CGFloat)spacing
{
  _minimumInteritemSpacing = spacing;
}
  
- (NSSize) itemSize
{
  return _itemSize;
}

- (void) setItemSize: (NSSize)itemSize
{
  _itemSize = itemSize;
}
  
- (NSSize) estimatedItemSize
{
  return _estimatedItemSize;
}

- (void) setEstimatedItemSize: (NSSize)size
{
  _estimatedItemSize = size;
}
  
- (NSCollectionViewScrollDirection) scrollDirection
{
  return _scrollDirection;
}

- (void) setScrollDirection: (NSCollectionViewScrollDirection)direction
{
  _scrollDirection = direction;
}
  
- (NSSize) headerReferenceSize
{
  return _headerReferenceSize;
}

- (void) setHeaderReferenceSize: (NSSize)size
{
  _headerReferenceSize = size;
}
  
- (NSSize) footerReferenceSize
{
  return _footerReferenceSize;
}

- (void) setFooterReferenceSize: (NSSize)size
{
  _footerReferenceSize = size;
}
  
- (NSEdgeInsets) sectionInset
{
  return _sectionInset;
}

- (void) setSectionInset: (NSEdgeInsets)inset
{
  _sectionInset = inset;
}

- (BOOL) sectionHeadersPinToVisibleBounds
{
  return _sectionHeadersPinToVisibleBounds;
}

- (void) setSectionHeadersPinToVisibleBounds: (BOOL)f
{
  _sectionHeadersPinToVisibleBounds = f;
}

- (BOOL) sectionFootersPinToVisibleBounds
{
  return _sectionFootersPinToVisibleBounds;
}

- (void) setSectionFootersPinToVisibleBounds: (BOOL)f
{
  _sectionFootersPinToVisibleBounds = f;
}

- (BOOL) sectionAtIndexIsCollapsed: (NSUInteger)sectionIndex
{
  return NO;
}

- (void) collapseSectionAtIndex: (NSUInteger)sectionIndex
{
}

- (void) expandSectionAtIndex: (NSUInteger)sectionIndex
{
}

@end
