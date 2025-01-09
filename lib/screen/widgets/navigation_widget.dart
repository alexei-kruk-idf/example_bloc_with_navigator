import 'package:flutter/material.dart';

class NavigationWidget extends StatelessWidget {
  final VoidCallback pushCounterScreen;
  final VoidCallback pushGreenScreen;
  final VoidCallback pushRedScreen;
  final VoidCallback pushYellowScreen;
  final VoidCallback pop;
  final VoidCallback popAll;

  const NavigationWidget({
    super.key,
    required this.pushCounterScreen,
    required this.pushGreenScreen,
    required this.pushRedScreen,
    required this.pushYellowScreen,
    required this.pop,
    required this.popAll,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: pushCounterScreen,
            child: const Text('Push Counter Screen'),
          ),
          ElevatedButton(
            onPressed: pushGreenScreen,
            child: const Text('Push Green Screen'),
          ),
          ElevatedButton(
            onPressed: pushRedScreen,
            child: const Text('Push Red Screen'),
          ),
          ElevatedButton(
            onPressed: pushYellowScreen,
            child: const Text('Push Yellow Screen'),
          ),
          ElevatedButton(
            onPressed: pop,
            child: const Text('Pop'),
          ),
          ElevatedButton(
            onPressed: popAll,
            child: const Text('Pop all and push Green Screen'),
          ),
        ],
      ),
    );
  }
}
