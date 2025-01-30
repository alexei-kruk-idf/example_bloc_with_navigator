import 'package:collection/collection.dart';

import 'package:example_bloc_with_navigator/bloc/bloc.dart';
import 'package:example_bloc_with_navigator/navigator/base_page.dart';
import 'package:example_bloc_with_navigator/navigator/nav_result.dart';
import 'package:example_bloc_with_navigator/screen/app/app_tile.dart';
import 'package:example_bloc_with_navigator/screen/counter/counter_screen.dart';
import 'package:flutter/material.dart';

class AppBloc extends BlocImpl {
  final _appTile = AppTile.init();
  @override
  void initState() {
    handleData(data: _appTile);
    _initNavHandler();
    super.initState();
  }

  void _initNavHandler() {
    appNavigator.init(
      push: _push,
      popAllAndPush: _popAllAndPush,
      popAndPush: _popAndPush,
      pushPages: _pushPages,
      popAllAndPushPages: _popAllAndPushPages,
      pop: _pop,
      popUntil: _popUntil,
      canPop: _canPop,
      hasPage: _hasPage,
      popUntilByScreenName: _popUntilByScreenName,
      currentPage: _currentPage,
    );
  }

  void _push(BasePage page) {
    _appTile.pages.add(page);

    _appTile.isHideBottomNavBar = _appTile.pages.lastOrNull?.name != CounterScreen.ROUTE_NAME;
    handleData(data: _appTile);
  }

  void _popAllAndPush(BasePage page, {NavResult? result}) {
    _appTile.pages.clear();
    _push(page);
  }

  void _popAndPush(
    BasePage page, {
    NavResult? result,
  }) {
    _appTile.pages.removeLast();
    _push(page);
  }

  void _pushPages(List<BasePage> pages) {
    _appTile.pages.addAll(pages);
    handleData(data: _appTile);
  }

  void handleRemoveRouteSettings(RouteSettings value) {
    _appTile.pages.remove(value);
    _appTile.isHideBottomNavBar = _appTile.pages.lastOrNull?.name != CounterScreen.ROUTE_NAME;
    handleData(data: _appTile);
  }

  void _popAllAndPushPages(List<BasePage> pages) {
    _appTile.pages.clear();
    _appTile.pages.addAll(pages);
    handleData(data: _appTile);
  }

  void _pop(NavResult value) {
    _appTile.pages.removeLast();
    _appTile.isHideBottomNavBar = _appTile.pages.lastOrNull?.name != CounterScreen.ROUTE_NAME;
    handleData(data: _appTile);
  }

  bool _canPop() {
    return _appTile.pages.isNotEmpty && _appTile.pages.length > 1;
  }

  bool _hasPage(String pageName) =>
      _appTile.pages.firstWhereOrNull((element) => element.name == pageName) != null;

  BasePage _currentPage() => _appTile.pages.last;

  void _popUntil(BasePage page, NavResult value) {
    final start = _appTile.pages.indexWhere((e) => e.name == page.name) + 1;
    final end = _appTile.pages.length;
    _appTile.pages.removeRange(start, end);
    handleData(data: _appTile);
  }

  void _popUntilByScreenName(
    String screenName, {
    NavResult? result,
    bool includingLast = false,
  }) {
    final start = _appTile.pages.indexWhere((e) => e.name == screenName) + (includingLast ? 0 : 1);

    final end = _appTile.pages.length;
    _appTile.pages.removeRange(start, end);
    handleData(data: _appTile);
  }
}
