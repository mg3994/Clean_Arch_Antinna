part of 'config.dart';

enum Flavor {
  // set them in alphabatical order with full name
  development,
  production,
  staging
}

abstract class FlavorConfig {
  String get appName;
  Uri get baseUrl;
  Flavor get flavor;
  // FirebaseOptions get firebaseOptions; //in future if required

  factory FlavorConfig() {
    switch (appFlavor) {
      case "development":
        return DevelopmentConfig();
      case "staging":
        return StagingConfig();
      case "production":
      default:
        return ProductionConfig();
    }
  }
}
