part of 'home_bloc.dart';

sealed class HomeState {}

class HomeInitialState extends HomeState {}

class PrimeNumberState extends HomeState {
  final int number;
  final String updatedTime;

  PrimeNumberState({required this.number, required this.updatedTime});
}
