import 'package:flutter/material.dart';
import 'package:prince_of_pizza/home_screen.dart';
import 'package:prince_of_pizza/styles.dart';

import 'item_screen.dart';


class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MenuScreenBody(),
    );
  }
}


class MenuScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        HomeScreenCard(
          TextField(
            decoration: new InputDecoration(
                icon: Icon(Icons.search),
                hintText: 'Search Menu',
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
            ),
          ),
        ),
        GestureDetector(
          child: HomeScreenCard(
            Column(
              children: <Widget>[
                Center(
                  child: TitleWidget('Pizza'),
                ),
                MySeparator(color: Colors.grey,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    MenuTitleWidget('Cheese Pizza'),
                    SubTitleWidget('\$12.00+')
                  ],
                ),
                SubTitleWidget('Classic cheese or create your own pizza'),
                MySeparator(color: Colors.grey,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    MenuTitleWidget('Sicilian Cheese Pizza'),
                    SubTitleWidget('\$18.00')
                  ],
                ),
                SubTitleWidget('Classic cheese or create your own pizza'),
              ],
            ),
          ),
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ItemScreen()),
            );
          },
        ),
        HomeScreenCard(
          Column(
            children: <Widget>[
              Center(
                child: TitleWidget('Specialty Pies'),
              ),
              MySeparator(color: Colors.grey,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MenuTitleWidget('Buffalo Pizza'),
                  SubTitleWidget('\$19.00+')
                ],
              ),
              SubTitleWidget('Chicken, mozarella cheese, hot sauce, blue cheese.'),
              MySeparator(color: Colors.grey,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MenuTitleWidget('Hawaii Pizza'),
                  SubTitleWidget('\$19.00+')
                ],
              ),
              SubTitleWidget('Ham, pineapple, pizza sauce, mozzarella cheese'),
            ],
          ),
        ),
        HomeScreenCard(
          Column(
            children: <Widget>[
              Center(
                child: TitleWidget('Pizza By The Slice'),
              ),
              MySeparator(color: Colors.grey,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MenuTitleWidget('Cheese Pizza Slice'),
                  SubTitleWidget('\$3.00')
                ],
              ),
              SubTitleWidget('Classic cheese or create your own pizza'),
              MySeparator(color: Colors.grey,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MenuTitleWidget('Buffalo Chicken Pizza Slice'),
                  SubTitleWidget('\$4.00')
                ],
              ),
              SubTitleWidget('Buffalo chicken and mozarella cheese'),
            ],
          ),
        ),
        HomeScreenCard(
          Column(
            children: <Widget>[
              Center(
                child: TitleWidget('Appetizers'),
              ),
              MySeparator(color: Colors.grey,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MenuTitleWidget('Wings'),
                  SubTitleWidget('\$10.00')
                ],
              ),
              SubTitleWidget('Deep fried chicken wings with your choice of sauce'),
              MySeparator(color: Colors.grey,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MenuTitleWidget('Potato Chips'),
                  SubTitleWidget('\$2.00')
                ],
              ),
              SubTitleWidget('"Dirty Brand"'),
            ],
          ),
        ),
      ],
    );
  }
}


class MenuTitleWidget extends StatelessWidget {

  final string;

  MenuTitleWidget(this.string);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text(string,style: title.copyWith(fontStyle: FontStyle.normal,color: Colors.redAccent,fontSize: 18)),
    );
  }
}
