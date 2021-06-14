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
}

- (BOOL) invalidateFlowLayoutDelegateMetrics
{
  return NO;
}

- (void) setInvalidateFlowLayoutAttributes: (BOOL)flag
{
}

- (BOOL) invalidateFlowLayoutAttributes
{
  return NO;
}

@end

@implementation NSCollectionViewFlowLayout

- (CGFloat) minimumLineSpacing
{
  return 0.0;
}

- (void) setMinimumLineSpacing: (CGFloat)spacing
{
}

- (CGFloat) minimumInteritemSpacing
{
  return 0.0;
}

- (void) setMinimumInteritemSpacing: (CGFloat)spacing
{
}
  
- (NSSize) itemSize
{
  return NSZeroSize;
}

- (void) setItemSize: (NSSize)itemSize
{
}
  
- (NSSize) estimatedItemSize
{
  return NSZeroSize;
}

- (void) setEstimatedItemSize: (NSSize)size
{
}
  
- (NSCollectionViewScrollDirection) scrollDirection
{
  return NSCollectionViewScrollDirectionVertical;
}

- (void) setScrollDirection: (NSCollectionViewScrollDirection)direction
{
}
  
- (NSSize) headerReferenceSize
{
  return NSZeroSize;
}

- (void) setHeaderReferenceSize: (NSSize)size
{
}
  
- (NSSize) footerReferenceSize
{
  return NSZeroSize;
}

- (void) setFooterReferenceSize: (NSSize)size
{
}
  
- (NSEdgeInsets) sectionInset
{
  return NSEdgeInsetsZero;
}

- (void) setSectionInset: (NSEdgeInsets)inset
{
}

- (BOOL) sectionHeadersPinToVisibleBounds
{
  return NO;
}

- (void) setSectionHeadersPinToVisibleBounds: (BOOL)f
{
}

- (BOOL) sectionFootersPinToVisibleBounds
{
  return NO;
}

- (void) setSectionFootersPinToVisibleBounds: (BOOL)f
{
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
