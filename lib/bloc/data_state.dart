part of 'data_bloc.dart';

sealed class DataState extends Equatable {
  const DataState();

  @override
  List<Object> get props => [];
}

final class DataInitial extends DataState {}

final class DataLoaded extends DataState {
  final String data;

  DataLoaded({required this.data});
  @override
  List<Object> get props => [];
}
