# Pulse BT Development Notes

## Environment

- Workspace: `D:\Work\Github Projects\Pulse-BT`
- Flutter SDK: `D:\Work\AndroidStudio\SDKs\flutter`
- Dart SDK: bundled with Flutter 3.44.6
- Android SDK: `D:\Work\AndroidStudio\SDKs`
- JDK: bundled with Android Studio at `D:\Programs\Android Studio\jbr`
- Android platform tools and SDK packages are already present in the configured SDK path.
- No Android device was available for physical verification during Phase 0.
- The machine does have a desktop Windows Flutter target and Chrome/Edge web targets configured, but no Android hardware or emulator was connected.

## Initialization

The Flutter project was created in the workspace root using:

```powershell
flutter create --project-name pulse_bt --org com.pulsebt .
```

The app was then configured for:

- package name: `com.pulsebt.app`
- minimum SDK: API 24
- app label: `Pulse BT`
- primary orientation: landscape

## Validation commands executed

```powershell
flutter --version
flutter doctor -v
dart --version
flutter devices
flutter config --android-sdk "D:\Work\AndroidStudio\SDKs"
flutter pub get
flutter analyze
flutter test
flutter build apk --debug
```

## Current build status

The initialization and starter app are complete, and the project passes static analysis and the placeholder widget test.

The remaining blocker is external network access during Android build artifact resolution:

- Gradle failed while downloading Flutter debug engine artifacts from `https://storage.googleapis.com/download.flutter.io/...`
- The failure was a `403 Forbidden` response from the Flutter artifact endpoint while resolving `armeabi_v7a_debug` and `arm64_v8a_debug` jars.
- The root cause is not a missing SDK or misconfiguration in the project itself; it is an outbound 403 from the artifact host while Gradle resolves dependencies.

Until that proxy or endpoint issue is corrected, the Android debug APK cannot be produced in this environment.

## Next action after 403 is fixed

Once outbound access to the Flutter artifact host works again, re-run:

```powershell
flutter clean
flutter pub get
flutter analyze
flutter test
flutter build apk --debug
```

Then continue with the native Bluetooth integration and the rest of the defined phases.
