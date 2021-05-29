/* Definition of class NSDictionaryController
   Copyright (C) 2020 Free Software Foundation, Inc.
   
   By: Gregory John Casamento
   Date: 24-08-2020

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

#ifndef _NSDictionaryController_h_GNUSTEP_GUI_INCLUDE
#define _NSDictionaryController_h_GNUSTEP_GUI_INCLUDE

#import <AppKit/NSArrayController.h>

#if OS_API_VERSION(MAC_OS_X_VERSION_10_5, GS_API_LATEST)

#if	defined(__cplusplus)
extern "C" {
#endif

@class NSDictionaryControllerKeyValuePair;
  
@interface NSDictionaryController : NSArrayController
{
  NSDictionary *_contentDictionary;
  NSDictionary *_localizedKeyDictionary;
  NSString *_localizedKeyTable;
  NSArray *_includedKeys;
  NSArray *_excludedKeys;
  NSString *_initialKey;
  id _initialValue;
}

- (NSDictionaryControllerKeyValuePair *) newObject;

- (NSDictionary *) localizedKeyDictionary;
- (void) setLocalizedKeyDictionary: (NSDictionary *)dict;
  
- (NSString *) localizedKeyTable;
- (void) setLocalizedKeyTable: (NSString *)table;
  
- (NSArray *) includedKeys;
- (void) setIncludedKeys: (NSArray *)includedKeys;

- (NSArray *) excludedKeys;
- (void) setExcludedKeys: (NSArray *)excludedKeys;
  
- (NSString *) initialKey;
- (void) setInitialKey: (NSString *)k;
  
- (id) initialValue;
- (void) setInitialValue: (id)v;

@end

@interface NSDictionaryControllerKeyValuePair : NSObject
{
  BOOL _explicitlyIncluded;
  NSString *_key;
  NSString *_localizedKey;
  id _value;
}
  
- (BOOL) isExplicitlyIncluded;

- (NSString *) key;
- (void) setKey: (NSString *)key;
  
- (NSString *) localizedKey;
- (void) setLocalizedKey: (NSString *)key;
  
- (id) value;
- (void) setValue: (id)value;
  
@end

#if	defined(__cplusplus)
}
#endif

#endif	/* GS_API_MACOSX */

#endif	/* _NSDictionaryController_h_GNUSTEP_GUI_INCLUDE */

