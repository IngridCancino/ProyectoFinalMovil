import 'package:flutter/material.dart';
import '../../features/home/screens/coach_screen.dart';
import '../../features/home/screens/home_screen.dart';
import '../../features/home/screens/progress_screen.dart';

class BottomNavigation extends StatelessWidget {
  final int currentIndex;

  const BottomNavigation({
    super.key,
    required this.currentIndex,
  });

  void _navigate(BuildContext context, int index) {
    if (index == currentIndex) {
      return;
    }

    Widget screen;

    switch (index) {
      case 0:
        screen = const CoachScreen();
        break;
      case 1:
        screen = const HomeScreen();
        break;
      case 2:
        screen = const ProgressScreen();
        break;
      default:
        screen = const HomeScreen();
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        _navigate(context, index);
      },
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.people_outline),
          label: 'Coach',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.fitness_center),
          label: 'Entrenamientos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Progreso',
        ),
      ],
    );
  }
}