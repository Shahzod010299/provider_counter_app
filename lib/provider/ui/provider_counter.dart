import 'package:flutter/material.dart';
import 'package:localiation/provider/counter_view_model.dart';
import 'package:provider/provider.dart';

class ProviderCounter extends StatelessWidget {
  const ProviderCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Column()),
            Text('Siz shuncha marta FAB ni bosdingiz',style: TextStyle(fontSize: 20),),
            Text('${context
                .watch<CounterViewModel>()
                .counter}',
                style: TextStyle(fontSize: 34)),
            Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          context.read<CounterViewModel>().increment();
                        },
                        child: Icon(Icons.add),
                      ),
                      SizedBox(height: 4),
                      FloatingActionButton(
                        onPressed: () {
                          context.read<CounterViewModel>().decrement();
                        },
                        child: Icon(Icons.minimize),
                      ),
                      SizedBox(height: 24)
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
