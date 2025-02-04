part of 'home_bloc.dart';

sealed class HomeEvent {}
class GetRandomNumberEvent extends HomeEvent{}
class GetSavedTimeEvent extends HomeEvent{}
class UpdatePrimeTimeEvent extends HomeEvent{}
class ReturnToClockEvent extends HomeEvent{}


