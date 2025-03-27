import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:padel_app/core/config/router.dart';
import 'package:padel_app/core/config/routes.dart';
import 'package:padel_app/core/config/theme.dart';
import 'package:padel_app/features/skeleton/presentation/providers/skeleton_provider.dart';
import 'package:padel_app/features/translation/presentation/providers/translation_provider.dart';
import 'package:padel_app/injection_container.dart';
import 'package:provider/provider.dart';

final sl = GetIt.instance;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  await Future.delayed(Duration(milliseconds: 2500));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //TranslationProvider
        ChangeNotifierProvider(create: (context) => sl<TranslationProvider>()),

        //SkeletonProvider
        ChangeNotifierProvider(create: (context) => sl<SkeletonProvider>()),
      ],
      child: MaterialApp(
        title: 'Padel App',
        theme: appTheme(context),
        routes: appRoutes,
        initialRoute: AppRoutes.initialRoute,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}