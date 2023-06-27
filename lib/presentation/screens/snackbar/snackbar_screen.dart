import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackBarScreen({super.key});

  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackCustom =  SnackBar(
      content: const Text('Hola!'),
      action: SnackBarAction(
        label: 'Ok!', onPressed: () {},
      ),
      duration: const Duration(seconds: 2),
      
    );

    ScaffoldMessenger.of(context).showSnackBar(snackCustom);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snack-Bar and Dialogues'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Show Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackBar(context),
      ),
    );
  }
}
