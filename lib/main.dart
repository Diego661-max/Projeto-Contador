import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
    );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
      HomePage({super.key});

      void decrement(){print('decrement');}
      void increment(){print('increment');}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Pode Entrar!',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 141, 4, 226),
          ),
          ),
           Text('0',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 141, 4, 226),
          ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: decrement,
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                fixedSize: const Size(45, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Text('Sair',
              style: TextStyle(
                color: Colors.lightGreen,
                fontSize: 16,
              ),
              ),
              ),
              SizedBox(width: 32,
              ),
              TextButton(onPressed: increment,
               style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                fixedSize: const Size(45, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
               ),
              child: Text('Entrar',
                style: TextStyle(
                color: Colors.lightGreen,
                fontSize: 16,
                )
              ),
              ),
            ],
          )
        ],
      )
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
