import 'package:example_bloc_with_navigator/bloc/bloc_screen.dart';
import 'package:example_bloc_with_navigator/navigator/base_page.dart';
import 'package:example_bloc_with_navigator/screen/counter/counter_bloc.dart';
import 'package:example_bloc_with_navigator/screen/counter/counter_tile.dart';
import 'package:example_bloc_with_navigator/screen/widgets/navigation_widget.dart';
import 'package:flutter/material.dart';

class CounterScreen extends BlocScreen {
  static const ROUTE_NAME = '/CounterScreen';

  const CounterScreen({super.key});

  static BasePage page() => BasePage(
        key: UniqueKey(),
        builder: (context) => const CounterScreen(),
        name: ROUTE_NAME,
        isShowAnim: true,
      );

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends BlocScreenState<CounterScreen, CounterBloc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Counter Screen'),
      ),
      body: StreamBuilder(
        stream: bloc.dataStream,
        builder: (context, snapshot) {
          final data = snapshot.data?.data;
          if (data is CounterTile) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  data.number.toString(),
                  style: const TextStyle(fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: bloc.dec, child: const Text('-')),
                    ElevatedButton(onPressed: bloc.inc, child: const Text('+'))
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                NavigationWidget(
                  pop: bloc.pop,
                  popAll: bloc.popAll,
                  pushGreenScreen: bloc.pushGreenScreen,
                  pushRedScreen: bloc.pushRedScreen,
                  pushYellowScreen: bloc.pushYellowScreen,
                  pushCounterScreen: bloc.pushCounterScreen,
                ),
              ],
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
