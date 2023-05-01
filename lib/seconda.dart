import 'package:flutter/material.dart';

class seconda extends StatelessWidget {
  const seconda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Seconda pagina"),
      ),

      body: Column(
        children: [
          Hero(tag: 'immagine copertina',
          child: Image.asset('assets/images/logo.png')),
        ],
      ),
    );
  }
}
