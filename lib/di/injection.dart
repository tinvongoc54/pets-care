import 'package:get_it/get_it.dart';
import 'package:pets_care/di/module/cubit_module.dart';
import 'package:pets_care/di/module/remote_module.dart';
import 'package:pets_care/di/module/repository_module.dart';

import 'module/database_module.dart';
import 'module/local_module.dart';

final getIt = GetIt.instance;

Future<void> setupDI() async {
  // Local data sources
  await LocalModule.initModule();
  // Repository sources
  await RepositoryModule.initModule();
  // Cubit sources
  await CubitModule.initModule();
  // Database sources
  await DatabaseModule.initModule();
  // Remote sources
  await RemoteModule.initModule();
}