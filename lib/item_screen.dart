
import 'package:flutter/material.dart';
import 'package:prince_of_pizza/cart_screen.dart';
import 'package:prince_of_pizza/home_screen.dart';
import 'package:prince_of_pizza/styles.dart';

class ItemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: ItemScreenBody(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartScreen()),
              );
            },
            icon: Icon(Icons.shopping_cart),
            label: Text('Add To Cart'),
            backgroundColor: Colors.redAccent,
          ),
        ),
      ),
    );
  }
}

class ItemScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Center(child: TitleWidget('Cheese Pizza')),
        HomeScreenCard(
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SubTitleWidget('Quantity'),
              QuantityButton(),
            ],
          ),
        ),
        HomeScreenCard(
          Column(
            children: <Widget>[
              TitleWidget('Type'),
              MySeparator(
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SubTitleWidget('Small 14"'),
                  SelectedButton(),
                ],
              ),
              MySeparator(
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SubTitleWidget('Large 16"'),
                  SelectedButton(),
                ],
              ),
              MySeparator(
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SubTitleWidget('X-Large 18"'),
                  SelectedButton(),
                ],
              ),
            ],
          ),
        ),
        HomeScreenCard(
          Column(
            children: <Widget>[
              TitleWidget('Toppings'),
              MySeparator(
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SubTitleWidget('Extra Sauce'),
                  CircleFills(),
                ],
              ),
              MySeparator(
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SubTitleWidget('Extra Cheese'),
                  CircleFills(),
                ],
              ),
              MySeparator(
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SubTitleWidget('Ham'),
                  CircleFills(),
                ],
              ),
              MySeparator(
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SubTitleWidget('Chicken'),
                  CircleFills(),
                ],
              ),
              MySeparator(
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SubTitleWidget('Bacon'),
                  CircleFills(),
                ],
              ),
            ],
          ),
        ),
        HomeScreenCard(
          Column(
            children: <Widget>[
              HomeScreenCard(
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: new InputDecoration(
                      hintText: 'Add Special Requests (optional)',
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SubTitleWidget('We love special requests, but some may cost extra. If so we will adjust your total change after checkout'),
            ],
          ),
        ),
        SizedBox(
          height: 60,
        ),
      ],
    );
  }
}

class QuantityButton extends StatefulWidget {
  @override
  _QuantityButtonState createState() => _QuantityButtonState();
}

class _QuantityButtonState extends State<QuantityButton> {
  int amount = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          child: Container(
            width: 20.0,
            height: 20.0,
            decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(25.0),
              border: new Border.all(
                width: 2.0,
                color: Colors.redAccent,
              ),
            ),
            child: Center(
              child: Text(
                '-',
                style: subtitle.copyWith(color: Colors.redAccent),
              ),
            ),
          ),
          onTap: () {
            setState(() {
              if (amount != 0) amount--;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            width: 30.0,
            height: 30.0,
            decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(25.0),
                color: Colors.redAccent),
            child: Center(
              child: Text(
                amount.toString(),
                style: subtitle.copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
        GestureDetector(
          child: Container(
            width: 20.0,
            height: 20.0,
            decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(25.0),
              border: new Border.all(
                width: 2.0,
                color: Colors.redAccent,
              ),
            ),
            child: Center(
              child: Text(
                '+',
                style: subtitle.copyWith(color: Colors.redAccent),
              ),
            ),
          ),
          onTap: () {
            setState(() {
              amount++;
            });
          },
        ),
      ],
    );
  }
}

class SelectedButton extends StatefulWidget {
  @override
  _SelectedButtonState createState() => _SelectedButtonState();
}

class _SelectedButtonState extends State<SelectedButton> {
  Widget Container1 = Container(
    width: 20.0,
    height: 20.0,
    decoration: new BoxDecoration(
      borderRadius: new BorderRadius.circular(25.0),
      border: new Border.all(
        width: 2.0,
        color: Colors.redAccent,
      ),
    ),
    child: Center(
      child: Text(
        '',
        style: subtitle.copyWith(color: Colors.redAccent),
      ),
    ),
  );
  Widget Container2 = Container(
    width: 20.0,
    height: 20.0,
    decoration: new BoxDecoration(
      borderRadius: new BorderRadius.circular(25.0),
      border: new Border.all(
        width: 2.0,
        color: Colors.redAccent,
      ),
    ),
    child: Center(
      child: Container(
        width: 10.0,
        height: 10.0,
        decoration: new BoxDecoration(
            borderRadius: new BorderRadius.circular(25.0),
            color: Colors.redAccent),
        child: Center(
          child: Text(
            '',
            style: subtitle.copyWith(color: Colors.white),
          ),
        ),
      ),
    ),
  );

  var container;

  @override
  void initState() {
    container = Container1;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: container,
      onTap: () {
        setState(() {
          if (container == Container1) {
            container = Container2;
          } else {
            container = Container1;
          }
        });
      },
    );
  }
}

class CircleFills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/fills.png',width: 70,);
  }
}

