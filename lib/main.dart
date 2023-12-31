import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sending_data_from_user_side_to_bloc/bloc/data_bloc.dart';
import 'package:sending_data_from_user_side_to_bloc/sendingdatabloc.dart';

void main() {
  runApp(
      // BlocProvider(create: (context) => DataBloc(), child:
      MyApp()
      //)
      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => DataBloc(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: SnedingDataToBloc(),
        ));
  }
}
