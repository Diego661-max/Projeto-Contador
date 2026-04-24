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
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;

      void decrement(){
        setState(() {
        contador--; 
        });
        print(contador);
        }
      void increment(){
        setState(() {
        contador++; 
        }); 
        print(contador);
        }
        bool get isEmpty => contador == 0;
        bool get isFull => contador == 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
<<<<<<< HEAD
            image: AssetImage('assets/images/image.jpg'),
=======
            image: AssetImage('assets/images/6beb97e072221dc150318cf46173439b.jps'),
>>>>>>> f9c8c252888ce21e6260c47422799f6e2a3e3662
            fit: BoxFit.cover,
          )
        ),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            isFull ? 'Lotado':'Pode Entrar!',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w700,
            color:isFull ? Colors.blue : Color.fromARGB(255, 141, 4, 226),
          ),
          ),
<<<<<<< HEAD
          Padding(padding: EdgeInsets.all(50),
          child: Text(
          contador.toString(),
=======
          const Padding(padding: EdgeInsets.all(50),
          child: Text('0',
>>>>>>> f9c8c252888ce21e6260c47422799f6e2a3e3662
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w700,
            color: isFull ? Colors.blue : Color.fromARGB(255, 141, 4, 226),
          ),
          ),
          ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
              onPressed: isEmpty ? null: decrement,
              style: TextButton.styleFrom(
                backgroundColor: isEmpty ? Colors.black.withOpacity(0.2) : Colors.black,
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
              TextButton(
                onPressed:isFull ? null: increment,
               style: TextButton.styleFrom(
                backgroundColor: isFull ? Colors.black.withOpacity(0.2) : Colors.black,
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
<<<<<<< HEAD
=======
      ),
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
>>>>>>> f9c8c252888ce21e6260c47422799f6e2a3e3662
      ),
    );
  }
}