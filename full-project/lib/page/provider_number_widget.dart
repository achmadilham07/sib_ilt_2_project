import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sib_ilt_2_project/provider/number_provider.dart';

class ProviderNumberWidget extends StatelessWidget {
  const ProviderNumberWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // add ChangeNotifierProvider with NumberProvider as provider value
    return ChangeNotifierProvider(
      create: (_) => NumberProvider(),
      builder: (context, child) {
        return Scaffold(
          body: Center(
            child: Text(
              // change the value using provider
              context.watch<NumberProvider>().number.toString(),
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          floatingActionButton: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FloatingActionButton(
                heroTag: "provider_add",
                onPressed: () {
                  // run the increment function using provider
                  context.read<NumberProvider>().increment();
                },
                child: const Icon(Icons.add),
              ),
              const SizedBox(height: 16),
              FloatingActionButton(
                heroTag: "provider_remove",
                onPressed: () {
                  // run the decrement function using provider
                  context.read<NumberProvider>().decrement();
                },
                child: const Icon(Icons.remove),
              ),
            ],
          ),
        );
      },
    );
  }
}
