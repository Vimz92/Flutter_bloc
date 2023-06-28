part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class HomeProductWishListButtonClickedEvent extends HomeEvent {}

class HomeProductCartButtonClickedEvent extends HomeEvent {}

class HomeWishListButtonNavigateEvent extends HomeEvent {} //okay favourite

class HomeCartButtonNavigateEvent extends HomeEvent {} // okay shoppin cart
