import 'package:flutter/material.dart';
import 'package:products_app/feature/cart/ui/cart.dart';
import 'package:products_app/feature/home/bloc/home_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_app/feature/wishlist/ui/wishlist.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeBloc homeBloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listenWhen: (previous, current) {
        return current is HomeActionState;
      },
      buildWhen: (previous, current) {
        return current is! HomeActionState;
      },
      listener: (context, state) {
        if (state is HomeNavigateToWishListPageActionState) {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return const MyWishList();
          }));
        } else if (state is HomeNavigateToCartPageActionState) {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return const MyCart();
          }));
        }
      },
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text('Vimal Grocery App'),
              actions: [
                IconButton(
                    onPressed: () {
                      homeBloc.add(HomeWishListButtonNavigateEvent());
                    },
                    icon: Icon(Icons.favorite_border)),
                IconButton(
                    onPressed: () {
                      homeBloc.add(HomeCartButtonNavigateEvent());
                    },
                    icon: Icon(Icons.shopping_cart_outlined))
              ],
            ),
          ),
        );
      },
    );
  }
}
