import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:padel_app/core/config/router.dart';
import 'package:padel_app/core/config/routes.dart';
import 'package:padel_app/core/config/theme.dart';
import 'package:padel_app/features/translation/presentation/providers/translation_providers.dart';
import 'package:padel_app/injection_container.dart';

final sl = GetIt.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return _EagerInitialization(
      child: MaterialApp(
        title: 'Padel App',
        theme: darkAppTheme(context),
        routes: appRoutes,
        initialRoute: AppRoutes.initialRoute,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}


class _EagerInitialization extends ConsumerWidget {
  const _EagerInitialization({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final translationControllerInitialization = ref.watch( translationControllerProvider );

    // Handle error states and loading states
    if (translationControllerInitialization.isLoading) {
      return const CircularProgressIndicator();
    } else if (translationControllerInitialization.hasError) {
      return const Text('Oopsy!');
    }

    return child;
  }
}