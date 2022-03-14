import 'package:flutter/material.dart';

class ProviderNumberWidget extends StatelessWidget {
  const ProviderNumberWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: add ChangeNotifierProvider with NumberProvider as provider value
    return Scaffold(
      body: Center(
        child: Text(
          // TODO: change the value using provider
          "1",
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: "provider_add",
            onPressed: () {
              // TODO: run the increment function using provider
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            heroTag: "provider_remove",
            onPressed: () {
              // TODO: run the decrement function using provider
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
