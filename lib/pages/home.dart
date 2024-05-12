import 'package:flutter/material.dart';
import 'package:si_inventory/pages/out_product_list.dart';
import 'package:si_inventory/pages/product_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.user});

  final String? user;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Widget page;
    switch (selectedPage) {
      case 0:
        page = Column(
          children: [
            Expanded(child: ProductListPage()),
            Expanded(child: OutProductListPage()),
          ],
        );
        break;
      case 1:
        page = ProductListPage();
        break;
      case 2:
        page = OutProductListPage();
        break;
      default:
        throw UnimplementedError('No widget for $selectedPage');
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('SIMG'),
        titleTextStyle: TextStyle(
            inherit: true,
            fontSize: theme.textTheme.titleLarge!.fontSize,
            backgroundColor: theme.colorScheme.surface,
            color: theme.colorScheme.onSurface),
      ),
      drawer: Drawer(
          child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Text('Beranda'),
              onTap: () {
                setState(() {
                  selectedPage = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Data Barang'),
              onTap: () {
                setState(() {
                  selectedPage = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Data Barang Keluar'),
              onTap: () {
                setState(() {
                  selectedPage = 2;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      )),
      body: Center(
        child: Builder(builder: (context) {
          if (widget.user == null) {
            return const Text('Anda belum login.');
          } else {
            return page;
          }
        }),
      ),
    );
  }
}
