import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(
                top: 70,
                left: 40
              ),
              child: const Text(
                "Crea tu",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(
                left: 40
              ),
              child: const Text(
                "Cuenta",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            const Spacer(),
            Container(
              height: MediaQuery.of(context).size.height * 0.77,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50)
                )
              ),
              padding: EdgeInsets.only(
                top: 50,
                left: 40,
                right: 40
              ),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Nombre",
                      suffixIcon: const Icon(
                        Icons.person,
                        color: Colors.blue,
                      )
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Apellido",
                      suffixIcon: const Icon(
                        Icons.person,
                        color: Colors.blue,
                      )
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Correo",
                      suffixIcon: const Icon(
                        Icons.email,
                        color: Colors.blue,
                      )
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Telefono",
                      suffixIcon: const Icon(
                        Icons.phone,
                        color: Colors.blue,
                      )
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Contraseña",
                      suffixIcon: const Icon(
                        Icons.lock,
                        color: Colors.blue,
                      )
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Confirmar Contraseña",
                      suffixIcon: const Icon(
                        Icons.lock_outline,
                        color: Colors.blue,
                      )
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    margin: const EdgeInsets.only(
                      top:50
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.blueAccent,
                          Colors.lightBlueAccent
                        ]
                      ),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: FilledButton(
                      onPressed: (){

                      },
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.transparent
                      ), 
                      child: const Text(
                        "REGISTRARSE",
                        style: TextStyle(
                          fontSize: 28
                        ),
                      )
                    )
                  ),
                  const Spacer(),
                  Container(
                    alignment: Alignment.centerRight,
                    child: const Text(
                      "¿Ya tienes cuenta?",
                      style: TextStyle(
                        fontSize: 18
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    margin: const EdgeInsets.only(
                      bottom: 30
                    ),
                    child: const Text(
                      "Inicia Aqui",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}