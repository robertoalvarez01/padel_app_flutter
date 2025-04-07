import 'package:flutter/material.dart';

ThemeData appTheme(BuildContext context) {
  return Theme.of(context).copyWith(
      colorScheme: Theme.of(context).colorScheme.copyWith(
          surface: const Color(0xFFDDDDDD), //Light Grey
          primaryContainer: const Color(0xFFFFFFFF)));
}

ThemeData darkAppTheme(BuildContext context) {
  final t = Theme.of(context);
  return ThemeData(
      fontFamily: 'Lexend',
      colorScheme: t.colorScheme.copyWith(
        surface: const Color(0xFF121A21), //Light Grey
        primaryContainer: const Color(0xFF1A2633),
        secondary: const Color(0xFFFFFFFF),
        onPrimaryContainer: const Color(0xFF334D66)
      ),
      textTheme: t.textTheme.copyWith(
        headlineLarge: TextStyle(
            fontSize: 22,
            color: const Color(0xFFFFFFFF),
            fontWeight: FontWeight.bold),
        headlineMedium: TextStyle(
            fontSize: 18,
            color: const Color(0xFFFFFFFF),
            fontWeight: FontWeight.bold),
        labelMedium: TextStyle(
            fontSize: 16,
            color: const Color(0xFFFFFFFF),
            fontWeight: FontWeight.normal),
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: const Color(0xFF243647),
        labelTextStyle: WidgetStateTextStyle.resolveWith(
          (Set<WidgetState> states) {
            final Color color = states.contains(WidgetState.selected)
                ? const Color(0xFFFFFFFF)
                : const Color(0xFF94ADC7);
            return TextStyle(color: color);
          },
        ),
      ));
}
