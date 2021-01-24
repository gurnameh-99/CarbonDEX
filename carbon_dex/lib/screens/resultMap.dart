import 'package:flutter/material.dart';

class ResultMap extends StatefulWidget {
  @override
  _ResultMapState createState() => _ResultMapState();
}

class _ResultMapState extends State<ResultMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Carbon Footprint',
        ),
        centerTitle: true,

      ),
      body: Column(
          children:<Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Result",textScaleFactor: 2,style: TextStyle(fontWeight:FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Table(

                // textDirection: TextDirection.rtl,
                // defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                // border:TableBorder.all(width: 2.0,color: Colors.red),
                children: [
                  TableRow(
                      children: [
                        Text("origin",textScaleFactor: 1.75),
                        Text("Destination",textScaleFactor: 1.75),
                        Text("Carbon footprint",textScaleFactor: 1.75),
                      ]
                  ),
                  TableRow(
                      children: [
                        Text("Delhi, India",textScaleFactor: 1.5),
                        Text("Chandigarh India",textScaleFactor: 1.5),
                        Text("62.2254 Kg",textScaleFactor: 1.5),
                      ]
                  ),

                ],
              ),
            ),
          ]
      ),
    );
  }
}
