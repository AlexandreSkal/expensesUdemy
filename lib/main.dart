import 'package:expenses/model/transaction.dart';
import 'package:flutter/material.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomeApp());
  }
}

class MyHomeApp extends StatelessWidget {
  final _transactions = [
    Transaction(
      id: '1',
      title: 'Novo tênis e corrida',
      value: 310.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'conta de luz',
      value: 180.21,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Despesas Pessoais'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.yellow[100],
                child: Text('Gráfico'),
                elevation: 5,
              ),
            ),
            Column(
              children: _transactions
                  .map((tr) => Card(
                        child: Row(
                          children: [
                            Container(
                              child: Text(tr.value.toString()),
                            ),
                            Column(
                              children: [
                                Text(tr.title),
                                Text(tr.date.toString()),
                              ],
                            )
                          ],
                        ),
                      ))
                  .toList(),
            )
          ],
        ));
  }
}
