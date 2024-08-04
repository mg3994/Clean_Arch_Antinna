# antinna
```bash
flutter build appbundle --build-name=1.2.0 --build-number=2
```

# Prefix => `AT`
A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
# normal Dependencies
```bash
auto_route,flutter_bloc,connectivity_plus,dartz,device_info_plus,dio,dio_cache_interceptor,dio_smart_retry,envied,external_path,firebase_analytics,firebase_core,firebase_crashlytics,flutter_easyloading,flutter_secure_storage,flutter_spinkit,flutter_vibrate,freezed_annotation,geocoding,geolocator,get_it,infinite_scroll_pagination,injectable,intl,json_annotation,keyboard_attachable,logger,package_info_plus,path_provider,permission_handler,pull_to_refresh,rate_limiter,readmore,recase,share_plus,slang_flutter,app_links,url_launcher

```
# Remaining options
```bash
equatable <we will use equatable mmacro>
antinna_ui_kit <self path hosted>
```

# dev dependencies
```bash

auto_route_generator,bloc_test,build_runner,change_app_package_name,flutter_flavorizr,flutter_launcher_icons,freezed,injectable_generator,json_serializable,mocktail,slang_build_runner,


```
# remaining Dev dependencies
```bash
envied_generator:
    git:
      url: https://github.com/ryanaidilp/envied.git
      path: packages/envied_generator
```



```bash
in my flutter app i am using this kind of pattern => 
lib/
 ├── base/
 
 │   └── lifecycle_manager.dart
 
 ├── config/
 
 │   ├── env.dart
 
 │   └── env.g.dart
 
 ├── core/
 
 │   ├── assets/
 
 │   │   └── assets.gen.dart
 
 │   ├── constants/
 
 │   │   └── env_key_constant.dart
 
 │   ├── di/
 
 │   │   ├── service_locator.dart
 
 │   │   └── register_module.dart
 
 │   ├── exceptions/
 
 │   │   └── exceptions.dart
 
 │   ├── extensions/
 
 │   │   ├── dartz_x.dart
 
 │   │   └── string_x.dart
 
 │   ├── failures/
 
 │   │   └── failures.dart
 
 │   ├── i18n/
 
 │   │   ├── strings_id-ID.i18n.json
 
 │   │   ├── strings.i18n.json
 
 │   │   └── translations.g.dart
 
 │   ├── log
 
 │   ├── media_store
 
 │   ├── messengers
 
 │   ├── mixins
 
 │   ├── network/
 
 │   │   ├── http/
 
 │   │   │   ├── interceptors
 
 │   │   │   ├── modules
 
 │   │   │   ├── http_client.dart
 
 │   │   │   └── http_module.dart
 
 │   │   ├── api_endpoint.dart
 
 │   │   ├── api_error_type.dart
 
 │   │   └── api_exceptions.dart
 
 │   └── use_cases
 
 ├── features/
 
 │   ├── auth/
 
 │   │   ├── data/
 
 │   │   │   ├── data_sources
 
 │   │   │   ├── models
 
 │   │   │   └── repositories
 
 │   │   ├── domain/
 
 │   │   │   ├── entities
 
 │   │   │   ├── repositories
 
 │   │   │   └── use_cases
 
 │   │   └── presentation/
 
 │   │       ├── bloc
 
 │   │       ├── pages
 
 │   │       └── widgets
 
 │   ├── create_document
 
 │   ├── mail
 
 │   ├── notification
 
 │   ├── profile
 
 │   └── recovery       
 
 ├── router/
 
 │   ├── guards/
 
 │   │   ├── auth_guard.dart
 
 │   │   └── guest_guard.dart
 
 │   ├── observers
 
 │   ├── results
 
 │   ├── antinna_deeplink.dart
 
 │   └── antinna_router.dart
 
 ├── shared/
 
 │   ├── widgets/
 
 │   │   └── statistic_card.dart
 
 │   └── models
 
 ├── utils/
 
 │   └── date_formatter_util.dart
 
 ├── app.dart
 
 ├── injection.dart
 
 └── main.dart

 |_bootstrap.dart

```