#![allow(non_upper_case_globals)]
#![allow(non_camel_case_types)]
#![allow(non_snake_case)]

include!("bindings.rs");

#[link(name = "CoreFoundation", kind = "framework")]
unsafe extern "C" {}

#[link(name = "Security", kind = "framework")]
unsafe extern "C" {}
