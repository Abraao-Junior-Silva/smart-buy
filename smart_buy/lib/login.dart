import 'package:flutter/material.dart';
import 'package:smart_buy/home.dart';
import 'package:smart_buy/redefinirSenha.dart';
import 'package:smart_buy/cadastrarUsuario.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [

          SizedBox(height: 40),

          Text(
            "BEM VINDO!",
            style: TextStyle(
              fontWeight: FontWeight.bold, 
              fontSize: 50,
              color: Color(0xFFE87C17)
            ),
          ),

            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Não possui um cadastro? ",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),

              // GestureDetector para "Cadastre-se" como um link
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => cadastrarUsuario()),
                  );
                },
                child: Text(
                  "Cadastre-se",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFFE87C17),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 40),

          Text(
            "LOGIN",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFFE87C17)
              ),
          ),

          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 3.0),
                child: TextField(
                  decoration: InputDecoration (
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 8.0),
                      child: Icon(Icons.person),
                    ),
                    labelText: "Usuário",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(30),
              ),
                child: TextField(
                  decoration: InputDecoration (
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 8.0),
                      child: Icon(Icons.lock),
                    ),
                    labelText: "Senha",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
            ),

          SizedBox(height: 10), 
                   
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Esqueceu sua senha? ",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),

              // GestureDetector para "Cadastre-se" como um link
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => redefinirSenha()),
                  );
                },
                child: Text(
                  "Clique aqui.",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFFE87C17),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 30),

          Container(
            width: double.infinity,
            height: 40.0,
            padding: EdgeInsets.symmetric(horizontal: 80),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFE87C17),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Text(
                'Entrar',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          )
        ]
      ),
    );
  }
}