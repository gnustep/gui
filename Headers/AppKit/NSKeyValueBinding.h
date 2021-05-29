/** <title>NSKeyValueBinding</title>

   <abstract>Interface declaration for key value binding</abstract>

   Copyright <copy>(C) 2006 Free Software Foundation, Inc.</copy>

   Author: Fred Kiefer <fredkiefer@gmx.de>
   Date: June 2006

   This file is part of the GNUstep GUI Library.

   This library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2 of the License, or (at your option) any later version.

   This library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with this library; see the file COPYING.LIB.
   If not, see <http://www.gnu.org/licenses/> or write to the 
   Free Software Foundation, 51 Franklin Street, Fifth Floor, 
   Boston, MA 02110-1301, USA.
*/

#ifndef _GNUstep_H_NSKeyValueBinding
#define _GNUstep_H_NSKeyValueBinding

#import <GNUstepBase/GSVersionMacros.h>
#import <Foundation/NSObject.h>
#import <AppKit/AppKitDefines.h>

#if OS_API_VERSION(MAC_OS_X_VERSION_10_3, GS_API_LATEST)

@class NSString;
@class NSArray;
@class NSDictionary;


@interface NSObject (NSKeyValueBindingCreation)

+ (void) exposeBinding: (NSString *)key;

- (NSArray *) exposedBindings;
- (Class) valueClassForBinding: (NSString *)binding;
- (void) bind: (NSString *)binding 
     toObject: (id)controller 
  withKeyPath: (NSString *)keyPath 
      options: (NSDictionary *)options;
- (void) unbind: (NSString *)binding;
#if OS_API_VERSION(MAC_OS_X_VERSION_10_4, GS_API_LATEST)
- (NSDictionary *) infoForBinding: (NSString *)binding;
#endif
@end

@interface NSObject (NSPlaceholder)

+ (id) defaultPlaceholderForMarker: (id)marker 
                       withBinding: (NSString *)binding;
+ (void) setDefaultPlaceholder: (id)placeholder 
                     forMarker: (id)marker 
                   withBinding: (NSString *)binding;

@end


@interface NSObject (NSEditor)

- (BOOL) commitEditing;
- (void) discardEditing;
#if OS_API_VERSION(MAC_OS_X_VERSION_10_4, GS_API_LATEST)
- (void) commitEditingWithDelegate: (id)delegate
                 didCommitSelector: (SEL)didCommitSelector 
                       contextInfo: (void *)contextInfo;
#endif

@end

@interface NSObject (NSEditorRegistration)

- (void) objectDidBeginEditing: (id)editor;
- (void) objectDidEndEditing: (id)editor;

@end

// typedefs
typedef NSString* NSBindingName;
typedef NSString* NSBindingOption;

// binding values
#if OS_API_VERSION(MAC_OS_X_VERSION_10_13, GS_API_LATEST)
typedef NSString *NSBindingName;
#endif

// Keys in options dictionary
#if OS_API_VERSION(MAC_OS_X_VERSION_10_4, GS_API_LATEST)
APPKIT_EXPORT BOOL NSIsControllerMarker(id object);

// Keys in dictionary returned by infoForBinding
APPKIT_EXPORT NSString *NSObservedObjectKey;
APPKIT_EXPORT NSString *NSObservedKeyPathKey;
APPKIT_EXPORT NSString *NSOptionsKey;

// special markers
APPKIT_EXPORT id NSMultipleValuesMarker;
APPKIT_EXPORT id NSNoSelectionMarker;
APPKIT_EXPORT id NSNotApplicableMarker;

// Binding name constants
APPKIT_EXPORT NSBindingName NSAlignmentBinding;
APPKIT_EXPORT NSBindingName NSContentArrayBinding;
APPKIT_EXPORT NSBindingName NSContentBinding;
APPKIT_EXPORT NSBindingName NSContentDictionaryBinding;
APPKIT_EXPORT NSBindingName NSContentObjectBinding;
APPKIT_EXPORT NSBindingName NSContentValuesBinding;
APPKIT_EXPORT NSBindingName NSEditableBinding;
APPKIT_EXPORT NSBindingName NSEnabledBinding;
APPKIT_EXPORT NSBindingName NSExcludedKeysBinding;
APPKIT_EXPORT NSBindingName NSFontBinding;
APPKIT_EXPORT NSBindingName NSFontNameBinding;
APPKIT_EXPORT NSBindingName NSFontSizeBinding;
APPKIT_EXPORT NSBindingName NSHiddenBinding;
APPKIT_EXPORT NSBindingName NSIncludedKeysBinding;
APPKIT_EXPORT NSBindingName NSInitialKeyBinding;
APPKIT_EXPORT NSBindingName NSInitialValueBinding;
APPKIT_EXPORT NSBindingName NSLocalizedKeyDictionaryBinding;
APPKIT_EXPORT NSBindingName NSManagedObjectContextBinding;
APPKIT_EXPORT NSBindingName NSSelectedIndexBinding;
APPKIT_EXPORT NSBindingName NSSelectedObjectBinding;
APPKIT_EXPORT NSBindingName NSSelectedTagBinding;
APPKIT_EXPORT NSBindingName NSSelectedValueBinding;
APPKIT_EXPORT NSBindingName NSSelectionIndexesBinding;
APPKIT_EXPORT NSBindingName NSSortDescriptorsBinding;
APPKIT_EXPORT NSBindingName NSTextColorBinding;
APPKIT_EXPORT NSBindingName NSTitleBinding;
APPKIT_EXPORT NSBindingName NSToolTipBinding;
APPKIT_EXPORT NSBindingName NSValueBinding;

//Binding options constants
APPKIT_EXPORT NSBindingOption NSAllowsEditingMultipleValuesSelectionBindingOption;
APPKIT_EXPORT NSBindingOption NSAllowsNullArgumentBindingOption;
APPKIT_EXPORT NSBindingOption NSConditionallySetsEditableBindingOption;
APPKIT_EXPORT NSBindingOption NSConditionallySetsEnabledBindingOption;
APPKIT_EXPORT NSBindingOption NSConditionallySetsHiddenBindingOption;
APPKIT_EXPORT NSBindingOption NSContinuouslyUpdatesValueBindingOption;
APPKIT_EXPORT NSBindingOption NSCreatesSortDescriptorBindingOption;
APPKIT_EXPORT NSBindingOption NSDeletesObjectsOnRemoveBindingsOption;
APPKIT_EXPORT NSBindingOption NSDisplayNameBindingOption;
APPKIT_EXPORT NSBindingOption NSDisplayPatternBindingOption;
APPKIT_EXPORT NSBindingOption NSHandlesContentAsCompoundValueBindingOption;
APPKIT_EXPORT NSBindingOption NSInsertsNullPlaceholderBindingOption;
APPKIT_EXPORT NSBindingOption NSInvokesSeparatelyWithArrayObjectsBindingOption;
APPKIT_EXPORT NSBindingOption NSMultipleValuesPlaceholderBindingOption;
APPKIT_EXPORT NSBindingOption NSNoSelectionPlaceholderBindingOption;
APPKIT_EXPORT NSBindingOption NSNotApplicablePlaceholderBindingOption;
APPKIT_EXPORT NSBindingOption NSNullPlaceholderBindingOption;
APPKIT_EXPORT NSBindingOption NSPredicateFormatBindingOption;
APPKIT_EXPORT NSBindingOption NSRaisesForNotApplicableKeysBindingOption;
APPKIT_EXPORT NSBindingOption NSSelectorNameBindingOption;
APPKIT_EXPORT NSBindingOption NSSelectsAllWhenSettingContentBindingOption;
APPKIT_EXPORT NSBindingOption NSValidatesImmediatelyBindingOption;
APPKIT_EXPORT NSBindingOption NSValueTransformerNameBindingOption;
APPKIT_EXPORT NSBindingOption NSValueTransformerBindingOption;
#endif

#endif // OS_API_VERSION

#endif // _GNUstep_H_NSKeyValueBinding
