import 'package:flutter/material.dart';
import 'package:prince_of_pizza/checkout_screen.dart';
import 'package:prince_of_pizza/home_screen.dart';
import 'package:prince_of_pizza/menu_screen.dart';
import 'package:prince_of_pizza/styles.dart';


class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: CartScreenBody(),
          floatingActionButtonLocation:
          FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CheckoutScreen()),
              );
            },
            icon: Icon(Icons.attach_money),
            label: Text('Proceed to Checkout'),
            backgroundColor: Colors.redAccent,
          ),
        ),
      ),
    );
  }
}


class CartScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Center(child: TitleWidget('Cart'),),
        HomeScreenCard(
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SubTitleWidget('1 Cheese Pizza'),
                  SubTitleWidget('\$19.00'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SubTitleWidget('Pizza'),
                  Icon(Icons.close,color: Colors.grey,)
                ],
              ),
              MySeparator(color: Colors.grey,),
              FlatButton(
                child: Text('Add More Items',style: title.copyWith(color: Colors.white),),
                color: Colors.redAccent,
                onPressed: (){},
              ),
            ],
          ),
        ),
        Center(child: Column(
          children: <Widget>[
            TitleWidget('Slides You Gotta Try'),
            SubTitleWidget('Treat yourself to a few extras.')
          ],
        )),
        Padding(
          padding: const EdgeInsets.all(20),
          child: HomeScreenCard(
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    MenuTitleWidget('Cheese Cake'),
                    SubTitleWidget('\$4.00'),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SubTitleWidget('Classic cheese cake with a rich flavor'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.add_circle_outline,color: Colors.redAccent,),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Divider(color: Colors.grey,),
        HomeScreenCard(
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MenuTitleWidget('Subtotal'),
                  SubTitleWidget('\$19.00'),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SubTitleWidget('Before Delivery fee and taxes'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}