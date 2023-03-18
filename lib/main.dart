import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SuperMarket(),
    );

  }
}

class SuperMarket extends StatelessWidget {
  const SuperMarket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SuperMarket"),
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Shopping1(),
                  ),
                );
              },
              child: Text("Shopping1")),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Shopping2(),
                  ),
                );
              },
              child: Text("Shopping2")),
        ],
      ),
    );
  }
}

class Shopping1 extends StatelessWidget {
  const Shopping1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Shopping1"),
        ),
        body: Column(children: [
          Container(
            color: Colors.green,
            margin: EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 110,
                  padding: EdgeInsets.all(10),
                  child: Image(
                    image: NetworkImage(
                        "https://www.pngmart.com/files/17/Fruits-PNG-Photo-408x279.png"),

                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "fruits and vegetables",
                      style: TextStyle(fontSize: 25, color: Colors.amber),
                    ),
                    Text(
                      "banana, apple, grapes, tomato and other",
                      style: TextStyle(fontSize: 15, color: Colors.amber),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            color: Colors.yellow,
            margin: EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 100,
                  padding: EdgeInsets.all(5),
                  child: Image(
                    image: NetworkImage(
                        "https://www.pngall.com/wp-content/uploads/4/Wheat-Cereal-Bread-PNG-Clipart.png"),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "cereal",
                      style: TextStyle(fontSize: 30, color: Colors.green),
                    ),
                    Text(
                      "Buckwheat and other",
                      style: TextStyle(fontSize: 20, color: Colors.green),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            color: Colors.orange,
            margin: EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 100,
                  padding: EdgeInsets.all(10),
                  child: Image(
                    image: NetworkImage(
                        "https://marao.ge/pictures/image6/178087416242fdcad9d3a1d2583465bf.jpg"),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Meat",
                      style: TextStyle(fontSize: 30, color: Colors.red),
                    ),
                    Text(
                      "fish, beef, chicken and other",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            color: Colors.pink,
            margin: EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 120,
                  padding: EdgeInsets.all(10),
                  child: Image(
                    image: NetworkImage(
                        "https://bm.ge/uploads/news/610d0d6988258.png"),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "chocolate",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    Text(
                      "chocolate, candies, caramel",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),

        ]));
  }
}

class Shopping2 extends StatefulWidget {
  const Shopping2({Key? key}) : super(key: key);

  @override
  State<Shopping2> createState() => _Shopping2State();
}

class _Shopping2State extends State<Shopping2> {
  var inputController = TextEditingController();
  List<String> products = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("shopping List"),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            height: 200,
            child: Column(
              children: products.map((e)  {
                return Text(e);
              }). toList(),
            ),
          ),
          Row(
            children: [
              Container(
                width: 200,
                child: TextField(
                  controller: inputController,
                ),
              ),
              TextButton(onPressed: () {
                setState(() { products. add(inputController. text);
                inputController. clear();

                });
              }, child: Text("Add"))
            ],
          )
        ],
      ),
    );
  }
}

