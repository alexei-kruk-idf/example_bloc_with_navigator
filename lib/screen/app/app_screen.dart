import 'package:example_bloc_with_navigator/bloc/bloc_screen.dart';
import 'package:example_bloc_with_navigator/bloc/bloc_tile.dart';
import 'package:example_bloc_with_navigator/screen/app/app_bloc.dart';
import 'package:example_bloc_with_navigator/screen/app/app_tile.dart';
import 'package:flutter/material.dart';

final globalRootNavKey = GlobalKey<NavigatorState>();
final globalBottomNavKey = GlobalKey();

class AppArgs {
  final String title;

  AppArgs(this.title);
}

class App extends BlocScreen {
  const App({super.key});

  @override
  _AppState createState() => _AppState();
}

class _AppState extends BlocScreenState<App, AppBloc> {
  final FocusNode _focusNode = FocusNode();
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test',
      debugShowCheckedModeBanner: false,
      navigatorKey: globalRootNavKey,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: StreamBuilder<BlocTile>(
          stream: bloc.dataStream,
          builder: (context, snapshot) {
            final data = snapshot.data?.data;
            return data is AppTile
                ? GestureDetector(
                    onTap: () => FocusScope.of(context).requestFocus(_focusNode),
                    child: _AppScreenContent(
                      tile: data,
                      bloc: bloc,
                      navigatorKey: _navigatorKey,
                    ),
                  )
                : const SizedBox();
          }),
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
}

class _AppScreenContent extends StatelessWidget {
  final AppTile tile;
  final GlobalKey<NavigatorState> navigatorKey;
  final AppBloc bloc;

  const _AppScreenContent({
    required this.bloc,
    required this.tile,
    required this.navigatorKey,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        key: navigatorKey,
        pages: tile.pages.toList(),
        onPopPage: (route, result) {
          return route.didPop(result);
        },
      ),
    );
  }
}
