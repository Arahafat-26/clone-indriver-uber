import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.lightBlueAccent,
              Color.fromARGB(255, 12, 53, 122)
            ]
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Image.asset(
              'assets/img/icon_flutter.png',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            const Text(
              "Flutter App",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white
              ),
            ),
            const SizedBox(height: 150),
            const Text(
              "Bienvenido",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              margin: EdgeInsets.only(
                top: 20
              ),
              height: 50,
              child: OutlinedButton(
                onPressed: (){
                   context.go('/login');
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Colors.white,
                    width: 2
                  )
                ),
                child: const Text(
                  "INICIAR SESION",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                  ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              height: 55,
              margin: EdgeInsets.only(
                top: 20
              ),
              child: FilledButton(
                onPressed: (){
                  context.go('/register');                        
                },
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.white
                ),
                child: const Text(
                  "REGISTRARSE",
                  style: TextStyle(
                    color: Color.fromARGB(255, 13, 64, 106),
                    fontSize: 20
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.2,
                bottom: 15
              ),
              child: const Text(
                "Ingresa con redes sociales",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white
                  ),
                  child: Image.asset('assets/img/icon_instagram.png'),
                ),
                Container(
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white
                  ),
                  child: Image.asset('assets/img/icon_x.png'),
                ),
                Container(
                  width: 40,
                  height: 40,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white
                  ),
                  child: Image.asset('assets/img/icon_facebook.png'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}