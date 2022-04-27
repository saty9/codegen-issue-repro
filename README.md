# setup

```
dart pub global activate ffigen
dart pub get
```

# codegen command

`
flutter_rust_bridge_codegen --rust-input native/src/api.rs --dart-output lib/bridge_generated.dart --rust-output native/src/bridge_generated.rs
`

# surfacing issue

```
cd native
cargo build
```
