import 'package:flutter/material.dart';

final appTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: appLightTheme.appColor0,
  ),
  useMaterial3: true,
  extensions: const [
    appLightTheme,
  ],
);

const appLightTheme = AntinnaAppTheme(
  appColor0: Color(0xFF0D26DE), // TODO: change the names to blue
  appColor1: Color(0xFF1FB7F8),
  appColor2: Color(0xFFE0E0F0),
);

class AntinnaAppTheme extends ThemeExtension<AntinnaAppTheme> {
  const AntinnaAppTheme({
    required this.appColor0,
    required this.appColor1,
    required this.appColor2,
  });

  final Color appColor0;
  final Color appColor1;
  final Color appColor2;

  static AntinnaAppTheme of(BuildContext context) {
    return Theme.of(context).extension<AntinnaAppTheme>()!;
  }

  @override
  ThemeExtension<AntinnaAppTheme> copyWith({
    Color? appColor0,
    Color? appColor1,
    Color? appColor2,
  }) {
    return AntinnaAppTheme(
      appColor0: appColor0 ?? this.appColor0,
      appColor1: appColor1 ?? this.appColor1,
      appColor2: appColor2 ?? this.appColor2,
    );
  }

  @override
  ThemeExtension<AntinnaAppTheme> lerp(
      covariant AntinnaAppTheme other, double t) {
    return AntinnaAppTheme(
      appColor0: Color.lerp(appColor0, other.appColor0, t)!,
      appColor1: Color.lerp(appColor1, other.appColor1, t)!,
      appColor2: Color.lerp(appColor2, other.appColor2, t)!,
    );
  }
}
