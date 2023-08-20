import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sending_data_from_user_side_to_bloc/bloc/data_bloc.dart';

class ShowDataFromBloc extends StatelessWidget {
  // final String inputString;
  // const ShowDataFromBloc({super.key, required this.inputString});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Next Screen')),
      body: Center(
        child: BlocBuilder<DataBloc, DataState>(
          builder: (context, state) {
            if (state is DataLoaded) {
              return Text('Input String: ${state.data}');
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
