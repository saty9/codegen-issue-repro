#![allow(
    non_camel_case_types,
    unused,
    clippy::redundant_closure,
    clippy::useless_conversion,
    clippy::unit_arg,
    clippy::double_parens,
    non_snake_case
)]
// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`.

use crate::api::*;
use flutter_rust_bridge::*;

// Section: imports

// Section: wire functions

#[no_mangle]
pub extern "C" fn wire_platform(port_: i64) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "platform",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || move |task_callback| Ok(platform()),
    )
}

#[no_mangle]
pub extern "C" fn wire_rust_release_mode(port_: i64) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "rust_release_mode",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || move |task_callback| Ok(rust_release_mode()),
    )
}

#[no_mangle]
pub extern "C" fn wire_example_func(port_: i64, _input: *mut wire_StructWithComplexEnum) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "example_func",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api__input = _input.wire2api();
            move |task_callback| Ok(example_func(api__input))
        },
    )
}

// Section: wire structs

#[repr(C)]
#[derive(Clone)]
pub struct wire_OrAStruct {
    field: *mut wire_uint_8_list,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_StructWithComplexEnum {
    data: wire_ComplexEnum,
    other_data: wire_OrAStruct,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_uint_8_list {
    ptr: *mut u8,
    len: i32,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_ComplexEnum {
    tag: i32,
    kind: *mut ComplexEnumKind,
}

#[repr(C)]
pub union ComplexEnumKind {
    Platform: *mut ComplexEnum_Platform,
}

#[repr(C)]
#[derive(Clone)]
pub struct ComplexEnum_Platform {
    field0: i32,
}

// Section: wrapper structs

// Section: static checks

// Section: allocate functions

#[no_mangle]
pub extern "C" fn new_box_autoadd_struct_with_complex_enum() -> *mut wire_StructWithComplexEnum {
    support::new_leak_box_ptr(wire_StructWithComplexEnum::new_with_null_ptr())
}

#[no_mangle]
pub extern "C" fn new_uint_8_list(len: i32) -> *mut wire_uint_8_list {
    let ans = wire_uint_8_list {
        ptr: support::new_leak_vec_ptr(Default::default(), len),
        len,
    };
    support::new_leak_box_ptr(ans)
}

// Section: impl Wire2Api

pub trait Wire2Api<T> {
    fn wire2api(self) -> T;
}

impl<T, S> Wire2Api<Option<T>> for *mut S
where
    *mut S: Wire2Api<T>,
{
    fn wire2api(self) -> Option<T> {
        if self.is_null() {
            None
        } else {
            Some(self.wire2api())
        }
    }
}

impl Wire2Api<String> for *mut wire_uint_8_list {
    fn wire2api(self) -> String {
        let vec: Vec<u8> = self.wire2api();
        String::from_utf8_lossy(&vec).into_owned()
    }
}

impl Wire2Api<StructWithComplexEnum> for *mut wire_StructWithComplexEnum {
    fn wire2api(self) -> StructWithComplexEnum {
        let wrap = unsafe { support::box_from_leak_ptr(self) };
        (*wrap).wire2api().into()
    }
}

impl Wire2Api<ComplexEnum> for wire_ComplexEnum {
    fn wire2api(self) -> ComplexEnum {
        match self.tag {
            0 => unsafe {
                let ans = support::box_from_leak_ptr(self.kind);
                let ans = support::box_from_leak_ptr(ans.Platform);
                ComplexEnum::Platform(ans.field0.wire2api())
            },
            _ => unreachable!(),
        }
    }
}

impl Wire2Api<OrAStruct> for wire_OrAStruct {
    fn wire2api(self) -> OrAStruct {
        OrAStruct {
            field: self.field.wire2api(),
        }
    }
}

impl Wire2Api<Platform> for i32 {
    fn wire2api(self) -> Platform {
        match self {
            0 => Platform::Unknown,
            1 => Platform::Android,
            2 => Platform::Ios,
            3 => Platform::Windows,
            4 => Platform::Unix,
            5 => Platform::MacIntel,
            6 => Platform::MacApple,
            7 => Platform::Wasm,
            _ => unreachable!("Invalid variant for Platform: {}", self),
        }
    }
}

impl Wire2Api<StructWithComplexEnum> for wire_StructWithComplexEnum {
    fn wire2api(self) -> StructWithComplexEnum {
        StructWithComplexEnum {
            data: self.data.wire2api(),
            other_data: self.other_data.wire2api(),
        }
    }
}

impl Wire2Api<u8> for u8 {
    fn wire2api(self) -> u8 {
        self
    }
}

impl Wire2Api<Vec<u8>> for *mut wire_uint_8_list {
    fn wire2api(self) -> Vec<u8> {
        unsafe {
            let wrap = support::box_from_leak_ptr(self);
            support::vec_from_leak_ptr(wrap.ptr, wrap.len)
        }
    }
}

// Section: impl NewWithNullPtr

pub trait NewWithNullPtr {
    fn new_with_null_ptr() -> Self;
}

impl<T> NewWithNullPtr for *mut T {
    fn new_with_null_ptr() -> Self {
        std::ptr::null_mut()
    }
}

impl NewWithNullPtr for wire_ComplexEnum {
    fn new_with_null_ptr() -> Self {
        Self {
            tag: -1,
            kind: core::ptr::null_mut(),
        }
    }
}

#[no_mangle]
pub extern "C" fn inflate_ComplexEnum_Platform() -> *mut ComplexEnumKind {
    support::new_leak_box_ptr(ComplexEnumKind {
        Platform: support::new_leak_box_ptr(ComplexEnum_Platform {
            field0: Default::default(),
        }),
    })
}

impl NewWithNullPtr for wire_OrAStruct {
    fn new_with_null_ptr() -> Self {
        Self {
            field: core::ptr::null_mut(),
        }
    }
}

impl NewWithNullPtr for wire_StructWithComplexEnum {
    fn new_with_null_ptr() -> Self {
        Self {
            data: Default::default(),
            other_data: Default::default(),
        }
    }
}

// Section: impl IntoDart

impl support::IntoDart for Platform {
    fn into_dart(self) -> support::DartCObject {
        match self {
            Self::Unknown => 0,
            Self::Android => 1,
            Self::Ios => 2,
            Self::Windows => 3,
            Self::Unix => 4,
            Self::MacIntel => 5,
            Self::MacApple => 6,
            Self::Wasm => 7,
        }
        .into_dart()
    }
}

// Section: executor

support::lazy_static! {
    pub static ref FLUTTER_RUST_BRIDGE_HANDLER: support::DefaultHandler = Default::default();
}

// Section: sync execution mode utility

#[no_mangle]
pub extern "C" fn free_WireSyncReturnStruct(val: support::WireSyncReturnStruct) {
    unsafe {
        let _ = support::vec_from_leak_ptr(val.ptr, val.len);
    }
}
