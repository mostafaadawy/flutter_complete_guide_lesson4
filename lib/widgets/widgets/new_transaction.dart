import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final amounController = TextEditingController();
  final titleController = TextEditingController();
  final Function addTx;
  NewTransaction(this.addTx);
  @override
  Widget build(BuildContext context) {
    return           Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: 'Title'),
                    controller: titleController,
                  ),TextField(
                    decoration: InputDecoration(labelText: 'Amount'),
                    controller: amounController,
                  ),
                  FlatButton(
                    onPressed: (){
                      addTx(titleController.text,double.parse(amounController.text));
                    },
                   child: Text(
                     'Add Transaction',
                     style:TextStyle(color: Colors.purple) ,
                   )
                   )
                  ],
                )
              ),
          );
  }
}