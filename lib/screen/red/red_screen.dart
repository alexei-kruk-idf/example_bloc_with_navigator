import 'package:example_bloc_with_navigator/bloc/bloc_screen.dart';
import 'package:example_bloc_with_navigator/navigator/base_page.dart';
import 'package:example_bloc_with_navigator/screen/red/red_bloc.dart';
import 'package:example_bloc_with_navigator/screen/widgets/navigation_widget.dart';
import 'package:flutter/material.dart';

class RedScreen extends BlocScreen {
  static const ROUTE_NAME = '/RedScreen';

  const RedScreen({super.key});

  static BasePage page() => BasePage(
        key: UniqueKey(),
        builder: (context) => const RedScreen(),
        name: ROUTE_NAME,
      );

  @override
  State<RedScreen> createState() => _RedScreenState();
}

class _RedScreenState extends BlocScreenState<RedScreen, RedBloc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Red Screen'),
      ),
      body: ColoredBox(
        color: Colors.red.shade100,
        child: NavigationWidget(
          pop: bloc.pop,
          popAll: bloc.popAll,
          pushGreenScreen: bloc.pushGreenScreen,
          pushRedScreen: bloc.pushRedScreen,
          pushYellowScreen: bloc.pushYellowScreen,
          pushCounterScreen: bloc.pushCounterScreen,
        ),
      ),
    );
  }
}
