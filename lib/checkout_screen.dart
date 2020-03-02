import 'package:flutter/material.dart';
import 'package:prince_of_pizza/home_screen.dart';
import 'package:prince_of_pizza/styles.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class CheckoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: CheckoutScreenBody1(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CheckoutScreen2()),
              );
            },
            icon: Icon(Icons.arrow_forward),
            label: Text('Continue'),
            backgroundColor: Colors.redAccent,
          ),
        ),
      ),
    );
  }
}

class CheckoutScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: CheckoutScreenBody3(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {},
            icon: Icon(Icons.rate_review),
            label: Text('Review order'),
            backgroundColor: Colors.redAccent,
          ),
        ),
      ),
    );
  }
}

class CheckoutScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: CheckoutScreenBody2(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CheckoutScreen3()),
              );
            },
            icon: Icon(Icons.arrow_forward),
            label: Text('Continue'),
            backgroundColor: Colors.redAccent,
          ),
        ),
      ),
    );
  }
}

class Field extends StatelessWidget {
  var hint;
  var icon;

  Field(this.hint, {this.icon});

  @override
  Widget build(BuildContext context) {
    return HomeScreenCard(
      TextField(
        decoration: new InputDecoration(
          icon: icon,
          hintText: hint,
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class CheckoutScreenBody1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Align(child: SubTitleWidget('Checkout')),
            Align(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SignInWidget(),
              ),
              alignment: Alignment.centerRight,
            ),
          ],
        ),
        Divider(
          color: Colors.grey,
        ),
        Center(
            child: Image.asset(
          'assets/progress1.png',
          height: 10,
        )),
        Center(child: TitleWidget('Personal Info')),
        MySeparator(
          color: Colors.grey,
        ),
        Center(child: SubTitleWidget('Enter yours below to start an account')),
        Field('First Name'),
        Field('Last Name'),
        Field('Email Address'),
        Field('Password'),
        Field('Phone Number'),
      ],
    );
  }
}

class CheckoutScreenBody2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Align(child: SubTitleWidget('Checkout')),
            Align(
              child: SignInWidget(),
              alignment: Alignment.centerRight,
            ),
          ],
        ),
        Divider(
          color: Colors.grey,
        ),
        Center(
            child: Image.asset(
          'assets/progress2.png',
          height: 10,
        )),
        Center(child: TitleWidget('Location Info')),
        MySeparator(
          color: Colors.grey,
        ),
        Center(
            child:
                SubTitleWidget('Tell us where you want your food delivered.')),
        Field(
          'Location',
          icon: Icon(Icons.location_on),
        ),
        Field(' Unit (optional)'),
        Field(' City'),
        Field(' State'),
        Field(' Notes - eg, Buzz #237 (optional)'),
        Field(' Label - eg, Home (optional)'),
        Padding(
          padding: const EdgeInsets.all(30),
          child: FlatButton(
            child: Text(
              'Add Alternate Address',
              style: title.copyWith(color: Colors.white),
            ),
            color: Colors.redAccent,
            onPressed: () {
              homeAddressAlert(context);
            },
          ),
        ),
      ],
    );
  }
}

class CheckoutScreenBody3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Align(child: SubTitleWidget('Checkout')),
            Align(
              child: SignInWidget(),
              alignment: Alignment.centerRight,
            ),
          ],
        ),
        Divider(
          color: Colors.grey,
        ),
        HomeScreenCard(
          Column(
            children: <Widget>[
              Center(
                  child: Image.asset(
                'assets/progress3.png',
                height: 10,
              )),
              Center(child: TitleWidget('Payment Info')),
              MySeparator(
                color: Colors.grey,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.add_circle_outline,
                    color: Colors.redAccent,
                  ),
                  SubTitleWidget('Add New Card'),
                ],
              ),
              MySeparator(
                color: Colors.grey,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.attach_money,
                    color: Colors.redAccent,
                  ),
                  SubTitleWidget('Cash'),
                ],
              ),
              MySeparator(
                color: Colors.grey,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.payment,
                    color: Colors.redAccent,
                  ),
                  SubTitleWidget('Paypal'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SignInWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Text(
      'Sign In',
      style: subtitle.copyWith(
          fontWeight: FontWeight.bold, color: Colors.redAccent),
    ),
    onTap: (){
        SignInAlert(context);
    },
    );
  }
}

void homeAddressAlert(BuildContext context) {
  Alert(
      context: context,
      title: "Alternate Address",
      content: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.location_on),
              labelText: 'Location',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Unit (optional)',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'City',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'State',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: FlatButton(
              child: Text(
                'Add',
                style: title.copyWith(color: Colors.white),
              ),
              color: Colors.redAccent,
              onPressed: () {
                homeAddressAlert(context);
              },
            ),
          ),
        ],
      ),
      buttons: []).show();
}

void SignInAlert(BuildContext context) {
  Alert(
      context: context,
      title: "Sign In",
      content: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.email),
              labelText: 'Email Address',
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.lock_outline),
              labelText: 'Password',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: FlatButton(
              child: Text(
                'Sign In',
                style: title.copyWith(color: Colors.white),
              ),
              color: Colors.redAccent,
              onPressed: () {
                homeAddressAlert(context);
              },
            ),
          ),
        ],
      ),
      buttons: []).show();
}
