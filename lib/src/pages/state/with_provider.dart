import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_router_flutter/src/controller/count_controller_with_provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Provider',
            style: TextStyle(fontSize: 30),
          ),
          Consumer<CountControllerWithProvider>(builder: (_, snapshot, child) {
            return Text(
              snapshot.count.toString(),
              style: TextStyle(fontSize: 50),
            );
          }),
          ElevatedButton(
            child: Text(
              '+',
              style: TextStyle(fontSize: 30),
            ),
            onPressed: () {
              Provider.of<CountControllerWithProvider>(context, listen: false)
                  .increase();
            },
          ),
        ],
      ),
    );
  }
}
