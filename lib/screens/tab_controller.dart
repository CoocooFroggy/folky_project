import 'package:flutter/material.dart';

class MyTabController extends StatefulWidget {
  const MyTabController({Key? key}) : super(key: key);

  @override
  State<MyTabController> createState() => _MyTabControllerState();
}

class _MyTabControllerState extends State<MyTabController> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTapCallback,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            label: 'Page 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.abc),
            label: 'Page 2',
          ),
        ],
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          Center(child: Text('Page 1')),
          Center(child: Text('Page 2')),
        ],
      ),
    );
  }

  void _onTapCallback(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
