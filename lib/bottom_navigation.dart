import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  ValueNotifier<int> index = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: index,
      builder: (context, int n, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Bottom Navigation item '+n.toString()),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: n,
            onTap: (value) {
              index.value = value;
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_box), label: 'Account'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
            ],
          ),
        );
      },
    );
  }
}
