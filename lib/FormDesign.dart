import 'package:flutter/material.dart';
import 'package:deleteone/ScaleRoute.dart';
import 'package:deleteone/FoodOrderPage.dart';

class FormDesign extends StatefulWidget {
  @override
  _FoodOrderPageState createState() => _FoodOrderPageState();
}

class _FoodOrderPageState extends State<FormDesign> {

  bool checkedValue, checkedValue1 = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF3a3737),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Container(
          child: Text(
            "Address Details",
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
          padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: Column(
            children: [
              new Padding(padding: EdgeInsets.only(top: 25.0)),
              new TextFormField(
                decoration: new InputDecoration(
                  labelText: "First Name",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                    borderSide: new BorderSide(

                    ),
                  ),
                ),
                validator: (val) {
                  if (val.length==0) {
                    return "First name cannot be empty";
                  } else {
                    return null;
                  }
                },
              ),

              new Padding(padding: EdgeInsets.only(top: 15.0)),
              new TextFormField(
                decoration: new InputDecoration(
                  labelText: "Last Name",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                    borderSide: new BorderSide(

                    ),
                  ),
                ),
                validator: (val) {
                  if (val.length==0) {
                    return "Last name cannot be empty";
                  } else {
                    return null;
                  }
                },
              ),

              new Padding(padding: EdgeInsets.only(top: 15.0)),
              new TextFormField(
                decoration: new InputDecoration(
                  labelText: "Company Name (Optional)",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                    borderSide: new BorderSide(

                    ),
                  ),
                ),
              ),

              new Padding(padding: EdgeInsets.only(top: 15.0)),



              // --> DROPDOWN COUNTRY
              new Container(
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
                decoration: new BoxDecoration(
                    borderRadius:BorderRadius.all(Radius.circular(20.0)),
                    border: new Border.all(color: Colors.black38)
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      value: _selectedItem,
                      items: _dropdownMenuItems,
                      onChanged: (value) {
                        setState(() {
                          _selectedItem = value;
                        });
                      }),
                ),
              ),


              new Padding(padding: EdgeInsets.only(top: 15.0)),
              new TextFormField(
                decoration: new InputDecoration(
                  labelText: "Street Address",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                    borderSide: new BorderSide(),
                  ),
                  //fillColor: Colors.green
                ),
                validator: (val) {
                  if (val.length == 0) {
                    return "Street Address cannot be empty";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
                style: new TextStyle(
                  fontFamily: "Poppins",
                ),
              ),
              new Padding(padding: EdgeInsets.only(top: 15.0)),
              new TextFormField(
                decoration: new InputDecoration(
                  labelText: "City",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                    borderSide: new BorderSide(),
                  ),
                  //fillColor: Colors.green
                ),
                validator: (val) {
                  if (val.length == 0) {
                    return "City cannot be empty";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
                style: new TextStyle(
                  fontFamily: "Poppins",
                ),
              ),
              new Padding(padding: EdgeInsets.only(top: 15.0)),
              new TextFormField(
                decoration: new InputDecoration(
                  labelText: "State",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                    borderSide: new BorderSide(),
                  ),
                  //fillColor: Colors.green
                ),
                validator: (val) {
                  if (val.length == 0) {
                    return "State cannot be empty";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
                style: new TextStyle(
                  fontFamily: "Poppins",
                ),
              ),
              new Padding(padding: EdgeInsets.only(top: 15.0)),
              new TextFormField(
                decoration: new InputDecoration(
                  labelText: "Postcode",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                    borderSide: new BorderSide(),
                  ),
                  //fillColor: Colors.green
                ),
                validator: (val) {
                  if (val.length == 0) {
                    return "Postcode cannot be empty";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
                style: new TextStyle(
                  fontFamily: "Poppins",
                ),
              ),
              new Padding(padding: EdgeInsets.only(top: 15.0)),
              new TextFormField(
                decoration: new InputDecoration(
                  labelText: "Email Address",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                    borderSide: new BorderSide(),
                  ),
                  //fillColor: Colors.green
                ),
                validator: (val) {
                  if (val.length == 0) {
                    return "email cannot be empty";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
                style: new TextStyle(
                  fontFamily: "Poppins",
                ),
              ),
              new Padding(padding: EdgeInsets.only(top: 15.0)),
              new TextFormField(
                decoration: new InputDecoration(
                  labelText: "Phone Number",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                    borderSide: new BorderSide(),
                  ),
                  //fillColor: Colors.green
                ),
                validator: (val) {
                  if (val.length == 0) {
                    return "Phone cannot be empty";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
                style: new TextStyle(
                  fontFamily: "Poppins",
                ),
              ),


              Container(
                padding: EdgeInsets.only(top: 20.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: (checkedValue = true) ? Colors.red : Colors.blue,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              )),
                          width: 25,
                          height: 25,
                          child: Theme(
                            data: ThemeData(
                              unselectedWidgetColor: Colors.transparent,
                            ),
                            child: Checkbox(
                              activeColor: Colors.transparent,
                              checkColor: Colors.red,
                              value: checkedValue,
                              tristate: false,
                              onChanged: (bool isChecked) {
                                setState(() {
                                  checkedValue = isChecked;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text('Create an account?')
                      ],
                    ),
                  ],
                ),
              ),

              new Padding(padding: EdgeInsets.only(top: 15.0)),
              new TextFormField(
                decoration: new InputDecoration(
                  labelText: "Password",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                    borderSide: new BorderSide(),
                  ),
                  //fillColor: Colors.green
                ),
                validator: (val) {
                  if (val.length == 0) {
                    return "Password cannot be empty";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
                style: new TextStyle(
                  fontFamily: "Poppins",
                ),
              ),

              new Padding(padding: EdgeInsets.only(top: 15.0)),
              new TextFormField(
                decoration: new InputDecoration(
                  labelText: "Confirm Password",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                    borderSide: new BorderSide(),
                  ),
                  //fillColor: Colors.green
                ),
                validator: (val) {
                  if (val.length == 0) {
                    return "Confirm password cannot be empty";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
                style: new TextStyle(
                  fontFamily: "Poppins",
                ),
              ),



              Container(
                padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: (checkedValue1 = false) ? Colors.red : Colors.blue,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              )),
                          width: 24,
                          height: 24,
                          child: Theme(
                            data: ThemeData(
                              unselectedWidgetColor: Colors.transparent,
                            ),
                            child: Checkbox(
                              activeColor: Colors.transparent,
                              checkColor: Colors.red,
                              value: checkedValue1,
                              tristate: false,
                              onChanged: (bool isChecked) {
                                setState(() {
                                  checkedValue1 = isChecked;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text('Ship to a different address?')
                      ],
                    ),
                  ],
                ),
              ),








              new TextFormField(
                decoration: new InputDecoration(
                  labelText: "Order note (Optional)",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                    borderSide: new BorderSide(),
                  ),
                  //fillColor: Colors.green
                ),
                validator: (val) {
                  if (val.length == 0) {
                    return "Order cannot be empty";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
                style: new TextStyle(
                  fontFamily: "Poppins",
                ),
              ),
            ],
          ),
        ),
      ),

      // bottom navigation
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 0.0),
        padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
        height: 60.0,
        decoration: BoxDecoration(
            color: Colors.red,
            border: Border(
                top: BorderSide(color: Colors.grey[300],width: 1.0)
            )
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(onPressed: () {
                Navigator.push(context, ScaleRoute(page: FoodOrderPage()));
              },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red)),
                color: Colors.red,
                textColor: Colors.white,
                child: Text("SAVE",
                    style: TextStyle(fontSize: 16)),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<ListItem> _dropdownItems = [
    ListItem(1, "First Value"),
    ListItem(2, "Second Item"),
    ListItem(3, "Third Item"),
    ListItem(4, "Fourth Item")
  ];

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems;
  ListItem _selectedItem;

  void initState() {

    super.initState();

    _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);
    _selectedItem = _dropdownMenuItems[0].value;
  }

  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<ListItem>> items = List();
    for (ListItem listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name),
          value: listItem,
        ),
      );
    }
    return items;
  }
}

class ListItem {
  int value;
  String name;

  ListItem(this.value, this.name);
}