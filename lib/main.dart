import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_one/presentation/controller/category/category_bloc.dart';

import 'core/services/dependency_injection/service_locator.dart';
import 'presentation/ui/main_app.dart';

void main()async {
  await initDependencyInjection();
    WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiBlocProvider(providers: [
      BlocProvider<CategoryBloc>(
        create: (context) =>
            CategoryBloc(sl())..add(const CategoryEvent.getcategory()),
      )
    ], child: const MainApp()),
  );
}
