import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter + Material 3')),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];

        // Obtenemos el color primario del tema actual
        final colors = Theme.of(context).colorScheme;

        return _CustomListTile(menuItem: menuItem, colors: colors);
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({required this.menuItem, required this.colors});

  final MenuItems menuItem;
  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary),
      onTap: () {
        // TODO Navegación pendiente
      },
    );
  }
}
