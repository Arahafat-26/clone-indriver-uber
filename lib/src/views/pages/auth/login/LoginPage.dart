import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
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
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(
                  top: 70,
                  left: 40
                ),
                child: const Text(
                  "HOLA",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(
                  left: 35
                ),                
                child: const Text(
                  "¡REGISTRATE!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                )
              ),
              Spacer(),
              Container(
                height: MediaQuery.of(context).size.height * 0.75,
                margin: EdgeInsets.only(
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
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
                        labelText: "Correo Electronico",
                        suffixIcon: const Icon(
                          Icons.mail,
                          color: Colors.blue
                        )
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Contraseña",
                        suffixIcon: const Icon(
                          Icons.lock,
                          color: Colors.blue
                        )
                      ),
                      obscureText: true,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(
                        top: 35
                      ),
                      child: Text(
                        "¿Olvidaste tu contraseña?",
                        style: TextStyle(
                          fontSize: 16
                        ),
                      )
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 55,
                      margin: EdgeInsets.only(
                        top: 100
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors:[
                            Colors.blueAccent,
                            Colors.lightBlueAccent
                          ]
                        ),
                        borderRadius: BorderRadius.circular(40)
                      ),
                      child: FilledButton(
                        onPressed: () {}, 
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.transparent
                        ),
                        child: const Text(
                          "Iniciar Sesion",
                          style: TextStyle(
                            fontSize: 25
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      alignment: Alignment.centerRight,
                      child: const Text(
                        "¿No tienes cuenta?",
                        style: TextStyle(
                          fontSize: 15
                        ),
                      )
                    ),
                    const SizedBox(width: 5),
                    Container(
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(
                        bottom: 30
                      ),
                      child: GestureDetector(
                        onTap: (){
                          context.go('/register');
                        },
                        child: const Text(
                          "Registrate",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      )
                    )
                  ],
                ),
              )
            ],
          ),
        )
        );
  }
}