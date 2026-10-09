bindgen \
  include/wrapper.h \
  --output src/bindings.rs \
  --allowlist-function '^Sec.*' \
  --allowlist-type '^Sec.*' \
  --allowlist-var '^kSec.*' \
  --blocklist-type '^CF(Data|Dictionary|String|Allocator|Array|Date|Error)Ref$' \
  --blocklist-type '^__CF(Data|Dictionary|String|Allocator|Array|Date|Error)$' \
  --blocklist-type '^CF(TypeID|Index|TypeRef)$' \
  --raw-line 'use core_foundation_sys::base::{CFTypeID, CFIndex, CFTypeRef};' \
  --raw-line 'use core_foundation_sys::data::CFDataRef;' \
  --raw-line 'use core_foundation_sys::dictionary::CFDictionaryRef;' \
  --raw-line 'use core_foundation_sys::string::CFStringRef;' \
  --raw-line 'use core_foundation_sys::base::CFAllocatorRef;' \
  --raw-line 'use core_foundation_sys::array::CFArrayRef;' \
  --raw-line 'use core_foundation_sys::date::CFDateRef;' \
  --raw-line 'use core_foundation_sys::error::CFErrorRef;' \
  -- \
  -isysroot "$(xcrun --sdk macosx --show-sdk-path)"

cargo check
