import 'package:flutter/material.dart';
import 'package:flutter_widgets/data/notifiers.dart';
import 'package:flutter_widgets/views/pages/home_page.dart';
import 'package:flutter_widgets/views/pages/profile_page.dart';
import 'package:flutter_widgets/views/widgets/navbar_widget.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetsTree extends StatelessWidget {
  const WidgetsTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter'), centerTitle: true),

      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),

      bottomNavigationBar: NavbarWidget(),
    );
  }
}
