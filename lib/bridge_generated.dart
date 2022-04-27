// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`.

// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, prefer_single_quotes, prefer_const_constructors

import 'dart:convert';
import 'dart:typed_data';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'dart:ffi' as ffi;

part 'bridge_generated.freezed.dart';

abstract class Native {
  Future<Platform> platform({dynamic hint});

  Future<bool> rustReleaseMode({dynamic hint});

  Future<void> exampleFunc(
      {required StructWithComplexEnum input, dynamic hint});
}

@freezed
class ComplexEnum with _$ComplexEnum {
  const factory ComplexEnum.platform(
    Platform field0,
  ) = Platform;
}

class OrAStruct {
  final String field;

  OrAStruct({
    required this.field,
  });
}

enum Platform {
  Unknown,
  Android,
  Ios,
  Windows,
  Unix,
  MacIntel,
  MacApple,
  Wasm,
}

class StructWithComplexEnum {
  final ComplexEnum data;
  final OrAStruct otherData;

  StructWithComplexEnum({
    required this.data,
    required this.otherData,
  });
}

class NativeImpl extends FlutterRustBridgeBase<NativeWire> implements Native {
  factory NativeImpl(ffi.DynamicLibrary dylib) =>
      NativeImpl.raw(NativeWire(dylib));

  NativeImpl.raw(NativeWire inner) : super(inner);

  Future<Platform> platform({dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_platform(port_),
        parseSuccessData: _wire2api_platform,
        constMeta: const FlutterRustBridgeTaskConstMeta(
          debugName: "platform",
          argNames: [],
        ),
        argValues: [],
        hint: hint,
      ));

  Future<bool> rustReleaseMode({dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_rust_release_mode(port_),
        parseSuccessData: _wire2api_bool,
        constMeta: const FlutterRustBridgeTaskConstMeta(
          debugName: "rust_release_mode",
          argNames: [],
        ),
        argValues: [],
        hint: hint,
      ));

  Future<void> exampleFunc(
          {required StructWithComplexEnum input, dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_example_func(
            port_, _api2wire_box_autoadd_struct_with_complex_enum(input)),
        parseSuccessData: _wire2api_unit,
        constMeta: const FlutterRustBridgeTaskConstMeta(
          debugName: "example_func",
          argNames: ["input"],
        ),
        argValues: [input],
        hint: hint,
      ));

  // Section: api2wire
  ffi.Pointer<wire_uint_8_list> _api2wire_String(String raw) {
    return _api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  ffi.Pointer<wire_StructWithComplexEnum>
      _api2wire_box_autoadd_struct_with_complex_enum(
          StructWithComplexEnum raw) {
    final ptr = inner.new_box_autoadd_struct_with_complex_enum();
    _api_fill_to_wire_struct_with_complex_enum(raw, ptr.ref);
    return ptr;
  }

  int _api2wire_platform(Platform raw) {
    return raw.index;
  }

  int _api2wire_u8(int raw) {
    return raw;
  }

  ffi.Pointer<wire_uint_8_list> _api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }

  // Section: api_fill_to_wire

  void _api_fill_to_wire_box_autoadd_struct_with_complex_enum(
      StructWithComplexEnum apiObj,
      ffi.Pointer<wire_StructWithComplexEnum> wireObj) {
    _api_fill_to_wire_struct_with_complex_enum(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_complex_enum(
      ComplexEnum apiObj, wire_ComplexEnum wireObj) {
    if (apiObj is Platform) {
      wireObj.tag = 0;
      wireObj.kind = inner.inflate_ComplexEnum_Platform();
      wireObj.kind.ref.Platform.ref.field0 = _api2wire_platform(apiObj.field0);
    }
  }

  void _api_fill_to_wire_or_a_struct(OrAStruct apiObj, wire_OrAStruct wireObj) {
    wireObj.field = _api2wire_String(apiObj.field);
  }

  void _api_fill_to_wire_struct_with_complex_enum(
      StructWithComplexEnum apiObj, wire_StructWithComplexEnum wireObj) {
    wireObj.data = _api2wire_complex_enum(apiObj.data);
    wireObj.other_data = _api2wire_or_a_struct(apiObj.otherData);
  }
}

// Section: wire2api
bool _wire2api_bool(dynamic raw) {
  return raw as bool;
}

Platform _wire2api_platform(dynamic raw) {
  return Platform.values[raw];
}

void _wire2api_unit(dynamic raw) {
  return;
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.

/// generated by flutter_rust_bridge
class NativeWire implements FlutterRustBridgeWireBase {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  NativeWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  NativeWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void wire_platform(
    int port_,
  ) {
    return _wire_platform(
      port_,
    );
  }

  late final _wire_platformPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_platform');
  late final _wire_platform =
      _wire_platformPtr.asFunction<void Function(int)>();

  void wire_rust_release_mode(
    int port_,
  ) {
    return _wire_rust_release_mode(
      port_,
    );
  }

  late final _wire_rust_release_modePtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_rust_release_mode');
  late final _wire_rust_release_mode =
      _wire_rust_release_modePtr.asFunction<void Function(int)>();

  void wire_example_func(
    int port_,
    ffi.Pointer<wire_StructWithComplexEnum> _input,
  ) {
    return _wire_example_func(
      port_,
      _input,
    );
  }

  late final _wire_example_funcPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64,
              ffi.Pointer<wire_StructWithComplexEnum>)>>('wire_example_func');
  late final _wire_example_func = _wire_example_funcPtr.asFunction<
      void Function(int, ffi.Pointer<wire_StructWithComplexEnum>)>();

  ffi.Pointer<wire_StructWithComplexEnum>
      new_box_autoadd_struct_with_complex_enum() {
    return _new_box_autoadd_struct_with_complex_enum();
  }

  late final _new_box_autoadd_struct_with_complex_enumPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_StructWithComplexEnum>
              Function()>>('new_box_autoadd_struct_with_complex_enum');
  late final _new_box_autoadd_struct_with_complex_enum =
      _new_box_autoadd_struct_with_complex_enumPtr
          .asFunction<ffi.Pointer<wire_StructWithComplexEnum> Function()>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list(
    int len,
  ) {
    return _new_uint_8_list(
      len,
    );
  }

  late final _new_uint_8_listPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_uint_8_list> Function(
              ffi.Int32)>>('new_uint_8_list');
  late final _new_uint_8_list = _new_uint_8_listPtr
      .asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  ffi.Pointer<ComplexEnumKind> inflate_ComplexEnum_Platform() {
    return _inflate_ComplexEnum_Platform();
  }

  late final _inflate_ComplexEnum_PlatformPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ComplexEnumKind> Function()>>(
          'inflate_ComplexEnum_Platform');
  late final _inflate_ComplexEnum_Platform = _inflate_ComplexEnum_PlatformPtr
      .asFunction<ffi.Pointer<ComplexEnumKind> Function()>();

  void free_WireSyncReturnStruct(
    WireSyncReturnStruct val,
  ) {
    return _free_WireSyncReturnStruct(
      val,
    );
  }

  late final _free_WireSyncReturnStructPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturnStruct)>>(
          'free_WireSyncReturnStruct');
  late final _free_WireSyncReturnStruct = _free_WireSyncReturnStructPtr
      .asFunction<void Function(WireSyncReturnStruct)>();

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();
}

class ComplexEnum_Platform extends ffi.Struct {
  @ffi.Int32()
  external int field0;
}

class ComplexEnumKind extends ffi.Union {
  external ffi.Pointer<ComplexEnum_Platform> Platform;
}

class wire_ComplexEnum extends ffi.Struct {
  @ffi.Int32()
  external int tag;

  external ffi.Pointer<ComplexEnumKind> kind;
}

class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

class wire_OrAStruct extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> field;
}

class wire_StructWithComplexEnum extends ffi.Struct {
  external wire_ComplexEnum data;

  external wire_OrAStruct other_data;
}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<ffi.Uint8 Function(DartPort, ffi.Pointer<ffi.Void>)>>;
typedef DartPort = ffi.Int64;
