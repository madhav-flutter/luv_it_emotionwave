import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'view/screens/home_page.dart';

void main() => runApp(const CarouselDemo());

class CarouselDemo extends StatelessWidget {
  const CarouselDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.values.toList()[2],
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (ctx) => const HomeCarousalScreen(),
        
      },
    );
  }
}
