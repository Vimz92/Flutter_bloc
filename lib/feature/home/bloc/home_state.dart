part of 'home_bloc.dart';

@immutable
abstract class HomeState {} //normal state

abstract class HomeActionState extends HomeState {} //action state

class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeLoadedSuccessState extends HomeState {}

class HomeErrorState extends HomeState {}

class HomeNavigateToWishListPageActionState extends HomeActionState {}

class HomeNavigateToCartPageActionState extends HomeActionState {}
