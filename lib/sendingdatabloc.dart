import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sending_data_from_user_side_to_bloc/bloc/data_bloc.dart';
import 'package:sending_data_from_user_side_to_bloc/show%20datafrombloc.dart';

class SnedingDataToBloc extends StatefulWidget {
  @override
  State<SnedingDataToBloc> createState() => _SnedingDataToBlocState();
}

class _SnedingDataToBlocState extends State<SnedingDataToBloc> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: _textEditingController,
            decoration: InputDecoration(labelText: 'Enter a string'),
          ),
          SizedBox(height: 16.0),
          // BlocProvider(
          //   create: (context) =>
          //       DataBloc()..add(DataEvent(data: _textEditingController.text)),
          //   child:
          ElevatedButton(
            onPressed: () {
              String inputString = _textEditingController.text;
              BlocProvider.of<DataBloc>(context)
                  .add(DataEvent(data: inputString));
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShowDataFromBloc(),
                ),
              );
            },
            child: Text('Next'),
          ),
          //),
        ],
      ),
    );
  }
}
