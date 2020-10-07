import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_dash/flutter_dash.dart';

class Thankyou extends StatefulWidget {
  @override
  _FoodOrderPageState createState() => _FoodOrderPageState();
}

class _FoodOrderPageState extends State<Thankyou> {
  int counter = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF3a3737),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Container(
          child: Text(
            "Record Order",
            style: TextStyle(
                color: Color(0xFF3a3737),
                fontWeight: FontWeight.w600,
                fontSize: 18),
            textAlign: TextAlign.left,
          ),
        ),
        brightness: Brightness.light,
        actions: <Widget>[
          // CartIconWithBadge(),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              SizedBox(
                height: 10,
              ),

              Container(
                child: Center(
                  child: Container(
                    height: 80.0,
                    width: 80.0,
                    margin: const EdgeInsets.only(bottom: 30.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/menus/tck.png'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),

              Container(
                child: Center(
                  child: Text(
                    'Thank You',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black
                    ),
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(bottom: 20.0),
                child: Center(
                  child: Text(
                    'Your order has been received',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                    ),
                  ),
                ),
              ),

              Container(
                child: Center(
                  child: RaisedButton(
                    color: Colors.white60,
                    child: Text(
                      'Go To Homepage',
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
              ),

              MyApp2(),

              SizedBox(
                height: 10,
              ),
              TotalCalculationWidget(),
              ReferAddress(),
              ReferAddressTwo(),
            ],

          ),

        ),

      ),


    );
  }
}

class TotalCalculationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0xFFfae3e2).withOpacity(0.1),
          spreadRadius: 1,
          blurRadius: 1,
          offset: Offset(0, 1),
        ),
      ]),
      child: Card(
        color: Colors.white,
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Grilled Salmon",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "\$192",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Meat vegetable",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "\$102",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  )
                ],
              ),

              SizedBox(
                height: 15,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Sub Total",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "\$312",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  )
                ],
              ),

              SizedBox(
                height: 15,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Shipping",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "\$0",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  )
                ],
              ),

              SizedBox(
                height: 15,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Total",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "\$292",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  )
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
      padding: EdgeInsets.all(0),
      margin: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text('Order number:'),
              Text('#189'),
            ],
          ),
          Column(
            children: [
              Text('Created At:'),
              Text('Oct 5, 2020'),
            ],
          ),
          Column(
            children: [
              Text('Total:'),
              Text('345'),
            ],
          ),
          Column(
            children: [
              Text('Payment:'),
              Text('1'),
            ],
          ),
        ],
      ),
    ),
    );
  }
}

class ReferAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0xFFfae3e2).withOpacity(0.1),
          spreadRadius: 1,
          blurRadius: 1,
          offset: Offset(0, 1),
        ),
      ]),
      child: Card(
        color: Colors.white,
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Billing Address",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Bersking, Alpha New Jersery San Fransisco 2 Nepal 1200",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF3a3a3b),
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Phone number",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),

              SizedBox(
                height: 5,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "9861169270",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF3a3a3b)),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),

              SizedBox(
                height: 15,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Email Address",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),

              SizedBox(
                height: 5,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Simant.dhakal@gmail.com",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF3a3a3b)),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class ReferAddressTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0xFFfae3e2).withOpacity(0.1),
          spreadRadius: 1,
          blurRadius: 1,
          offset: Offset(0, 1),
        ),
      ]),
      child: Card(
        color: Colors.white,
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Shipping Address",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Anantalingashwor 2, Balkot Kausaltar, Bhaktapur Nepal",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF3a3a3b),
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Phone number",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),

              SizedBox(
                height: 5,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "9861169270",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF3a3a3b)),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),

              SizedBox(
                height: 15,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Email Address",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),

              SizedBox(
                height: 5,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Simant.dhakal@gmail.com",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF3a3a3b)),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}