import 'package:flutter/material.dart';

import 'transaction.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1', 
      title: 'New Shoes', 
      amount: 89.66, 
      date: DateTime.now(),
      ),
      Transaction(
      id: 't2', 
      title: 'Weekly Grocery', 
      amount: 50.22, 
      date: DateTime.now(),
      ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
                child:Text('CHARTS!'),
                elevation: 5,
            ),
          ),
          Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: 'Title'),
                  ),TextField(
                    decoration: InputDecoration(labelText: 'Amount'),
                  ),
                  FlatButton(
                    onPressed: (){},
                   child: Text(
                     'Add Transaction',
                     style:TextStyle(color: Colors.purple) ,
                   )
                   )
                  ],
                )
              ),
          ),
          Column(
            children: transactions.map((tx){
              return Card(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                      decoration: BoxDecoration(border: Border.all(color: Colors.purple, width: 2 )),
                      padding: EdgeInsets.all(10),
                      child: Text('\$${tx.amount}',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.purple),
                      ),
                      
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text(tx.title,
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                           DateFormat.yMd().add_jm().format(tx.date),
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      )
                  ],
                ),
              );
            }).toList(),
            ),
        ]
      ),
    );
  }
}
