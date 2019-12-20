import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => PriceList(),
  },
));

class PriceList extends StatefulWidget {
  @override
  _PriceListState createState() => _PriceListState();
}

class _PriceListState extends State<PriceList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
                "Product List"
            ),
            backgroundColor: Colors.redAccent
        ),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(5.0),
          children: <Widget>[
            ProductBox(
              name: "iPhone 11",
              description: "iPhone is the stylist phone ever",
              price: 2000,

            ),

            ProductBox(
              name: "Samsung Galaxy 12",
              description: "Latest Flagship of the Samsung",
              price: 1500,

            ),

            ProductBox(
              name: "HTC 15",
              description: "Latest Flagship of the HTC",
              price: 1700,
            ),

            ProductBox(
              name: "Realme XT",
              description: "Latest Flagship of the Realme",
              price: 1300,
            ),

            ProductBox(
              name: "Redmi Note 8",
              description: "Latest Flagship of the Xiomi",
              price: 1400,
            ),

            ProductBox(
              name: "Oppo F17",
              description: "Latest Flagship of the OPPO",
              price: 1400,
            ),

            ProductBox(
              name: "Huawei P20",
              description: "Latest Flagship of the Huawei",
              price: 1100,
            ),

            ProductBox(
              name: "Nokia 10",
              description: "Latest Flagship of the Nokia",
              price: 1000,
            ),
          ],
        )
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key key, this.name, this.description, this.price, }) :
        super(key: key);
  final String name;
  final String description;
  final int price;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                      child: Container(
                          padding: EdgeInsets.all(5),
                          color: Colors.blueGrey[100],
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                this.name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                  this.description
                              ),
                              Text(
                                  "Price: " + this.price.toString()
                              ),
                            ],
                          )
                      )
                  )
                ]
            )
        )
    );
  }
}

