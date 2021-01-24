import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

import 'form_data.dart';

class FormScreen1 extends StatelessWidget {
  var formData = FormData.getData;
  String _country;
  String _heatingfuel;
  String _electricitybill;
  String _percentlowcarbonelectricity;
  String _hoursspentinsplace;
  String _distancetravelledincar;
  String _carfuelconsumption;
  String _distancetravelledinbus;
  String _nummeatmeal;
  String _eddpigmeal;
  String _cheeseportion;
  String _snacknumbers;
  String _weight;
  String _moneymaterialgoods;
  String _moneyinbank;
  String _waterconsumption;
  String _internetdataused;
  // int _heatingfuel;
  // int _electricitybill;
  // int _percentlowcarbonelectricity;
  // int _hoursspentinsplace;
  // int _distancetravelledincar;
  // int _carfuelconsumption;
  // int _distancetravelledinbus;
  // int _nummeatmeal;
  // int _eddpigmeal;
  // int _cheeseportion;
  // int _snacknumbers;
  // bool _weight;
  // int _moneymaterialgoods;
  // int _moneyinbank;
  // int _waterconsumption;
  // int _internetdataused;
  int elecem;
  int natem;
  int fuelem;
  int gasem;
  int carm;
  int busem;
  int airem;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildcountry() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Country'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Country is Required';
        }
      },
      onSaved: (String value) {
        _country = value;
      },
    );
  }

  Widget _buildheatingfuel() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Heating Fuel'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Heating Fuel is Required';
        }
      },
      onSaved: (String value) {
        _heatingfuel = value;
      },
    );
  }

  Widget _buildelectricityfuel() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Electricity Fuel Consumption'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Electricity Fuel Consumption is Required';
        }
      },
      onSaved: (String value) {
        _electricitybill = value;
      },
    );
  }

  Widget _buildpercentlowcarbonelectricity() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Low Carbon Electricity'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Low Carbon Electricity is Required';
        }
      },
      onSaved: (String value) {
        _percentlowcarbonelectricity = value;
      },
    );
  }

  Widget _buildhoursspentinsplace() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Country'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Country is Required';
        }
      },
      onSaved: (String value) {
        _hoursspentinsplace = value;
      },
    );
  }

  Widget _builddistancetravelledincar() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Distance Travelled:Car'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Country is Required';
        }
      },
      onSaved: (String value) {
        _distancetravelledincar = value;
      },
    );
  }

  Widget _buildcarfuelconsumption() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Car Fuel Consumption'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Country is Required';
        }
      },
      onSaved: (String value) {
        _carfuelconsumption = value;
      },
    );
  }

  Widget _builddistancetravelledinbus() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Distance Travelled :Bus'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Country is Required';
        }
      },
      onSaved: (String value) {
        _distancetravelledinbus = value;
      },
    );
  }

  Widget _buildnummeatmeal() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Meat Consumption'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Country is Required';
        }
      },
      onSaved: (String value) {
        _nummeatmeal = value;
      },
    );
  }

  Widget _buildeddpigmeal() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Egg/Pig Meat Consumption'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Country is Required';
        }
      },
      onSaved: (String value) {
        _eddpigmeal = value;
      },
    );
  }

  Widget _buildcheeseportion() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Milk Consumption'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Country is Required';
        }
      },
      onSaved: (String value) {
        _cheeseportion = value;
      },
    );
  }

  Widget _buildsnacknumbers() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Number of Snack Consumption'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Country is Required';
        }
      },
      onSaved: (String value) {
        _snacknumbers = value;
      },
    );
  }

  Widget _buildweight() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Obese or not'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Country is Required';
        }
      },
      onSaved: (String value) {
        _weight = value;
      },
    );
  }

  Widget _buildmoneymaterialgoods() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Money Spent on material goods'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Country is Required';
        }
      },
      onSaved: (String value) {
        _moneymaterialgoods = value;
      },
    );
  }

  Widget _buildmoneyinbank() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Money in Bank'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Country is Required';
        }
      },
      onSaved: (String value) {
        _moneyinbank = value;
      },
    );
  }

  Widget _buildwaterconsumption() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Water Consumption'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Country is Required';
        }
      },
      onSaved: (String value) {
        _waterconsumption = value;
      },
    );
  }

  Widget _buildinternetdataused() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Internet Usage'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Country is Required';
        }
      },
      onSaved: (String value) {
        _internetdataused = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: Text('Carbon Footprint Tracker')),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
            key: _formKey,
            child: new SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text(
                      'Carbon Footprint is the amount of greenhouse gases—primarily carbon dioxide—released into the atmosphere by a particular human activity. A carbon footprint can be a broad meaasure or be applied to the actions of an individual, a family, an event, an organization, or even an entire nation.',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Sifonn'),
                    ),
                  ),
                  Container(
                    child: (Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: <Widget>[Divider(color: Colors.black)],
                          ),
                        )
                      ],
                    )),
                  ),
                  _buildelectricityfuel(),
                  _buildcarfuelconsumption(),
                  _buildheatingfuel(),
                  _builddistancetravelledincar(),
                  _builddistancetravelledinbus(),
                  _buildhoursspentinsplace(),
                  _buildpercentlowcarbonelectricity(),

                  // _buildnummeatmeal(),
                  // _buildeddpigmeal(),
                  // _buildcheeseportion(),
                  // _buildsnacknumbers(),
                  // _buildsnacknumbers(),
                  // _buildweight(),
                  // _buildmoneymaterialgoods(),
                  // _buildmoneymaterialgoods(),
                  // _buildmoneyinbank(),
                  // _buildwaterconsumption(),
                  // _buildinternetdataused(),
                  SizedBox(height: 100),
                  RaisedButton(
                    child: Text(
                      'submit',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontFamily: 'Sifonn'),
                    ),
                    onPressed: () {
                      if (!_formKey.currentState.validate()) {
                        return;
                      }
                      _formKey.currentState.save();

                      int elecem;
                      int natem;
                      int fuelem;
                      int gasem;
                      int carm;
                      int busem;
                      int airem;
                      //This place is for CO2 emission calculation
                      print(_country);
                      print(_heatingfuel);
                      print(_electricitybill);
                      print(_percentlowcarbonelectricity);
                      print(_hoursspentinsplace);
                      print(_distancetravelledincar);
                      print(_carfuelconsumption);
                      print(_distancetravelledinbus);
                      print(_nummeatmeal);
                      print(_eddpigmeal);
                      print(_cheeseportion);
                      print(_snacknumbers);
                      print(_weight);
                      print(_moneymaterialgoods);
                      print(_moneyinbank);
                      print(_waterconsumption);
                    },
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
