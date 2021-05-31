/* Implementation of class NSCollectionViewLayout
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

#import "AppKit/NSCollectionViewLayout.h"

@implementation NSCollectionViewLayoutAttributes
// Initializers
+ (instancetype) layoutAttributesForItemWithIndexPath: (NSIndexPath *)indexPath
{
  return nil;
}

+ (instancetype) layoutAttributesForInterItemGapBeforeIndexPath: (NSIndexPath *)indexPath
{
  return nil;
}

+ (instancetype) layoutAttributesForSupplementaryViewOfKind: (NSCollectionViewSupplementaryElementKind)elementKind
                                              withIndexPath: (NSIndexPath *)indexPath
{
  return nil;
}

+ (instancetype)layoutAttributesForDecorationViewOfKind:(NSCollectionViewDecorationElementKind)decorationViewKind
                                              withIndexPath: (NSIndexPath*)indexPath
{
  return nil;
}

// Properties
- (NSRect) frame
{
  return _frame;
}

- (void) setFrame: (NSRect)frame
{
  _frame = frame;
}

- (NSSize) size
{
  return _size;
}

- (void) setSize: (NSSize)size
{
  _size = size;
}

- (CGFloat) alpha
{
  return _alpha;
}

- (void) setAlpha: (CGFloat)alpha
{
  _alpha = alpha;
}

- (BOOL) isHidden
{
  return _hidden;
}

- (void) setHidden: (BOOL)hidden
{
  _hidden = hidden;
}

- (NSIndexPath *) indexPath
{
  return _indexPath;
}

- (void) setIndexPath: (NSIndexPath *)indexPath
{
  _indexPath = indexPath;
}

- (NSCollectionElementCategory) representedElementCategory
{
  return _representedElementCategory;
}

- (NSString *) representedElementKind
{
  return _representedElementKind;
}

- (id) copyWithZone: (NSZone *)z
{
  return self;
}
@end

@implementation NSCollectionViewUpdateItem
- (NSIndexPath *) indexPathBeforeUpdate
{
  return _indexPathBeforeUpdate;
}

- (NSIndexPath *) indexPathAfterUpdate
{
  return _indexPathAfterUpdate;
}

- (NSCollectionUpdateAction) updateAction
{
  return _updateAction;
}
@end


@implementation NSCollectionViewLayoutInvalidationContext
// Initializers
- (void)invalidateItemsAtIndexPaths: (NSSet *)indexPaths
{
}

- (void)invalidateSupplementaryElementsOfKind: (NSCollectionViewSupplementaryElementKind)elementKind
                                 atIndexPaths: (NSSet *)indexPaths
{
}

- (void)invalidateDecorationElementsOfKind: (NSCollectionViewDecorationElementKind)elementKind
                              atIndexPaths: (NSSet *)indexPaths
{
}

// Properties
- (BOOL) invalidateEverything
{
  return _invalidateEverything;
}

- (BOOL) invalidateDataSourceCounts
{
  return _invalidateDataSourceCounts;
}

- (NSSet *) invalidatedItemIndexPaths
{
  return _invalidatedItemIndexPaths;
}

- (NSPoint) contentOffsetAdjustment
{
  return _contentOffsetAdjustment;
}

- (void) setContentOffsetAdjustment: (NSPoint)point
{
  _contentOffsetAdjustment = point;
}

- (NSSize) contentSizeAdjustment
{
  return _contentSizeAdjustment;
}

- (void) setContentSizeAdjustment: (NSSize)size
{
  _contentSizeAdjustment = size;
}

- (NSDictionary *) invalidatedSupplementaryIndexPaths
{
  return _invalidatedSupplementaryIndexPaths;
}

- (NSDictionary *) invalidatedDecorationIndexPaths
{
  return _invalidatedDecorationIndexPaths;
}
@end

@implementation NSCollectionViewLayout

// Initializers
- (void)invalidateLayout
{
}

- (void)invalidateLayoutWithContext:(NSCollectionViewLayoutInvalidationContext *)context
{
}

- (void)registerClass: (Class)viewClass
        forDecorationViewOfKind: (NSCollectionViewDecorationElementKind)elementKind
{
}

- (void)registerNib: (NSNib *)nib
        forDecorationViewOfKind: (NSCollectionViewDecorationElementKind)elementKind
{
}

// Properties
- (NSCollectionView *) collectionView
{
  return _collectionView;
}

- (void) setCollectionView: (NSCollectionView *)cv
{
  _collectionView = cv;
}

- (NSSize) collectionViewContentSize
{
  return NSZeroSize;
}

// Methods to override for specific layouts...
- (void) prepareLayout
{
}

- (NSArray *) layoutAttributesForElementsInRect: (NSRect)rect
{
  return nil;
}

- (NSCollectionViewLayoutAttributes *) layoutAttributesForItemAtIndexPath: (NSIndexPath *)indexPath
{
  return nil;
}

- (NSCollectionViewLayoutAttributes *)
  layoutAttributesForSupplementaryViewOfKind: (NSCollectionViewSupplementaryElementKind)elementKind
  atIndexPath: (NSIndexPath *)indexPath
{
  return nil;
}

- (NSCollectionViewLayoutAttributes *)
  layoutAttributesForDecorationViewOfKind: (NSCollectionViewDecorationElementKind)elementKind
                              atIndexPath: (NSIndexPath *)indexPath
{
  return nil;
}

- (NSCollectionViewLayoutAttributes *)layoutAttributesForDropTargetAtPoint: (NSPoint)pointInCollectionView
{
  return nil;
}

- (NSCollectionViewLayoutAttributes *)layoutAttributesForInterItemGapBeforeIndexPath: (NSIndexPath *)indexPath
{
  return nil;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange: (NSRect)newBounds
{
  return NO;
}

- (NSCollectionViewLayoutInvalidationContext *)invalidationContextForBoundsChange: (NSRect)newBounds
{
  return nil;
}

- (BOOL)shouldInvalidateLayoutForPreferredLayoutAttributes: (NSCollectionViewLayoutAttributes *)preferredAttributes
                                    withOriginalAttributes: (NSCollectionViewLayoutAttributes *)originalAttributes
{
  return NO;
}

- (NSCollectionViewLayoutInvalidationContext *)
  invalidationContextForPreferredLayoutAttributes: (NSCollectionViewLayoutAttributes *)preferredAttributes
                           withOriginalAttributes: (NSCollectionViewLayoutAttributes *)originalAttributes
{
  return nil;
}

- (NSPoint) targetContentOffsetForProposedContentOffset: (NSPoint)proposedContentOffset
                                  withScrollingVelocity: (NSPoint)velocity
{
  return NSZeroPoint;
}

- (NSPoint) targetContentOffsetForProposedContentOffset: (NSPoint)proposedContentOffset
{
  return NSZeroPoint;  
}


// Update support
- (void) prepareForCollectionViewUpdates: (NSArray<NSCollectionViewUpdateItem *> *)updateItems
{
}

- (void) finalizeCollectionViewUpdates
{
}

- (void) prepareForAnimatedBoundsChange: (NSRect)oldBounds
{
}

- (void) finalizeAnimatedBoundsChange
{
}

- (void) prepareForTransitionToLayout: (NSCollectionViewLayout *)newLayout
{
}

- (void) prepareForTransitionFromLayout: (NSCollectionViewLayout *)oldLayout
{
}

- (void) finalizeLayoutTransition
{
}

- (NSCollectionViewLayoutAttributes *) initialLayoutAttributesForAppearingItemAtIndexPath: (NSIndexPath *)itemIndexPath
{
  return nil;
}

- (NSCollectionViewLayoutAttributes *) finalLayoutAttributesForDisappearingItemAtIndexPath: (NSIndexPath *)itemIndexPath
{
  return nil;
}

- (NSCollectionViewLayoutAttributes *)
  initialLayoutAttributesForAppearingSupplementaryElementOfKind: (NSCollectionViewSupplementaryElementKind)elementKind
                                                    atIndexPath: (NSIndexPath *)elementIndexPath
{
  return nil;
}

- (NSCollectionViewLayoutAttributes *)
  finalLayoutAttributesForDisappearingSupplementaryElementOfKind: (NSCollectionViewSupplementaryElementKind)elementKind
                                                     atIndexPath: (NSIndexPath *)elementIndexPath
{
  return nil;
}

- (NSCollectionViewLayoutAttributes *)
  initialLayoutAttributesForAppearingDecorationElementOfKind: (NSCollectionViewDecorationElementKind)elementKind
                                                 atIndexPath: (NSIndexPath *)decorationIndexPath
{
  return nil;
}

- (NSCollectionViewLayoutAttributes *)
  finalLayoutAttributesForDisappearingDecorationElementOfKind: (NSCollectionViewDecorationElementKind)elementKind
                                                   atIndexPath: (NSIndexPath *)decorationIndexPath
{
  return nil;
}

- (NSSet *)indexPathsToDeleteForSupplementaryViewOfKind: (NSCollectionViewSupplementaryElementKind)elementKind
{
  return nil;
}

- (NSSet *)indexPathsToDeleteForDecorationViewOfKind: (NSCollectionViewDecorationElementKind)elementKind
{
  return nil;
}

- (NSSet *)indexPathsToInsertForSupplementaryViewOfKind: (NSCollectionViewSupplementaryElementKind)elementKind
{
  return nil;
}

- (NSSet *)indexPathsToInsertForDecorationViewOfKind: (NSCollectionViewDecorationElementKind)elementKind
{
  return nil;
}

- (void) encodeWithCoder: (NSCoder *)coder
{
}

- (instancetype) initWithCoder: (NSCoder *)coder
{
  return self;
}
@end

