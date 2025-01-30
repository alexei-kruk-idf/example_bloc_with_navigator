import 'package:example_bloc_with_navigator/navigator/base_page.dart';
import 'package:example_bloc_with_navigator/screen/counter/counter_screen.dart';

class AppTile {
  final List<BasePage> pages;
  bool isHideBottomNavBar;

  AppTile({required this.isHideBottomNavBar, required this.pages});

  factory AppTile.init() => AppTile(
        pages: [
          CounterScreen.page(),
        ],
        isHideBottomNavBar: false,
      );
}
