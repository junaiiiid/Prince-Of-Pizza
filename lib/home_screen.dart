import 'package:flutter/material.dart';
import 'package:prince_of_pizza/menu_screen.dart';
import 'package:prince_of_pizza/styles.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: HomeScreenBody(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuScreen()),
              );
            },
            icon: Icon(Icons.local_pizza),
            label: Text('Order Here'),
            backgroundColor: Colors.redAccent,
          ),
        ),
      ),
    );
  }
}


class HomeScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        HomeScreenCard(Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('assets/pizza.png'),
            TitleWidget('Prince Of Pizza'),
            SubTitleWidget('763 Bergen Ave, Jersey City, NJ 07306'),
            SubTitleWidget('50-65 min \$2.00 Delivery Fee \$10.00 min'),
            MySeparator(color: Colors.grey,),
            TitleWidget('Closes 10:15 PM'),
          ],
        )),
        HomeScreenCard(Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(child: TitleWidget('Our Story')),
            Image.asset('assets/story.png'),
            SubTitleWidget('Prince of Pizza is currently located at 763 Bergen Ave, Jersey City, NJ 07306. Order your favorite pizza, pasta, salad, and more, all with the click of a button.'),
            SubTitleWidget('Prince of Pizza accepts orders online for pickup and delivery.'),
          ],
        )),
        HomeScreenCard(Column(
          children: <Widget>[
            Center(
              child: TitleWidget('Our Hours'),
            ),
            MySeparator(color: Colors.grey,),
            SubTitleWidget('Delivery'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SubTitleWidget('Sunday'),
                    SubTitleWidget('Monday'),
                    SubTitleWidget('Tuesday'),
                    SubTitleWidget('Wednesday'),
                    SubTitleWidget('Thursday'),
                    SubTitleWidget('Friday'),
                    SubTitleWidget('Saturday'),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SubTitleWidget('11:00 AM - 11:15 PM'),
                    SubTitleWidget('11:00 AM - 11:15 PM'),
                    SubTitleWidget('11:00 AM - 11:15 PM'),
                    SubTitleWidget('11:00 AM - 11:15 PM'),
                    SubTitleWidget('11:00 AM - 11:15 PM'),
                    SubTitleWidget('11:00 AM - 11:15 PM'),
                    SubTitleWidget('11:00 AM - 11:15 PM'),
                  ],
                ),
              ],
            ),
            MySeparator(color: Colors.grey,),
            SubTitleWidget('Pickup'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SubTitleWidget('Sunday'),
                    SubTitleWidget('Monday'),
                    SubTitleWidget('Tuesday'),
                    SubTitleWidget('Wednesday'),
                    SubTitleWidget('Thursday'),
                    SubTitleWidget('Friday'),
                    SubTitleWidget('Saturday'),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SubTitleWidget('11:00 AM - 11:15 PM'),
                    SubTitleWidget('11:00 AM - 11:15 PM'),
                    SubTitleWidget('11:00 AM - 11:15 PM'),
                    SubTitleWidget('11:00 AM - 11:15 PM'),
                    SubTitleWidget('11:00 AM - 11:15 PM'),
                    SubTitleWidget('11:00 AM - 11:15 PM'),
                    SubTitleWidget('11:00 AM - 11:15 PM'),
                  ],
                ),
              ],
            ),
          ],
        )),
        SizedBox(height: 60,),
      ],
    );
  }
}


class HomeScreenCard extends StatelessWidget {

  final column;

  HomeScreenCard(this.column);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey)
      ),
      child: column,
    );
  }
}

class TitleWidget extends StatelessWidget {

  final string;

  TitleWidget(this.string);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text(string,style: title),
    );
  }
}

class SubTitleWidget extends StatelessWidget {

  final string;

  SubTitleWidget(this.string);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text(string,style: subtitle),
    );
  }
}
