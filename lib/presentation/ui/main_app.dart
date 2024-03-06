import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_one/presentation/controller/category/category_bloc.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: BlocConsumer<CategoryBloc, CategoryState>(
          listener: (context, state) {},
          builder: (context, state) {
            return state.maybeMap(
              orElse: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              success: (value) {
                return Center(
                  child: Column(
                    children: [
                      Text(value.data.name),
                      ElevatedButton(
                        child: const Text("state"),
                        onPressed: () {
                          context
                              .read<CategoryBloc>()
                              .add(const CategoryEvent.getcategory());
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
