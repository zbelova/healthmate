import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:healthmate/presentation/navigation_bar.dart';
import 'package:hive/hive.dart';

import 'data/dto/condition_local_dto.dart';
import 'data/dto/entry_local_dto.dart';
import 'data/healthmate_local_datasource.dart';
import 'data/healthmate_repository.dart';
import 'data/user_preferences.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserPreferences().init();
  // код для инициализации Hive
  final directory = await getApplicationDocumentsDirectory();
  Hive
    ..init(directory.path)
    ..registerAdapter(EntryLocalDtoAdapter())
    ..registerAdapter(ConditionLocalDtoAdapter());

  GetIt.I.registerSingleton(HealthMateLocalDatasource());
  GetIt.I.registerSingleton(HealthMateRepository(GetIt.I.get()));

  runApp(const ProviderScope(child: Healthmate()));
}

class Healthmate extends StatelessWidget {
  const Healthmate({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HelathMate',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeNavigationBar(),
    );
  }
}
