import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackBarScreen({super.key});

  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackCustom = SnackBar(
      content: const Text('Hola!'),
      action: SnackBarAction(
        label: 'Ok!',
        onPressed: () {},
      ),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackCustom);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) =>  AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text('Ipsum do anim et anim occaecat aliqua ex veniam commodo do eu. Dolore dolor sit incididunt officia adipisicing veniam laborum. Enim dolore excepteur id laborum fugiat enim voluptate sunt ut dolore dolore mollit adipisicing pariatur. Et culpa labore adipisicing occaecat proident in id ad pariatur non ad amet ad.'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: const Text('Cancel')),
          FilledButton(onPressed: () => context.pop(), child: const Text('Confirm')),

        ],
      ), 
    
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snack-Bar and Dialogues'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      'Duis ut irure sunt sunt id nostrud. Ullamco dolore nulla do mollit proident occaecat consectetur est. Anim reprehenderit quis quis consequat veniam minim.'),
                ]);
              },
              child: const Text('Used Licenses')),
          FilledButton.tonal(
              onPressed: () => openDialog(context), 
              child: const Text('Show Dialog')),
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Show Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackBar(context),
      ),
    );
  }
}
