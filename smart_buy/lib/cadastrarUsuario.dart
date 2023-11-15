import 'package:flutter/material.dart';
import 'package:smart_buy/LoginPage.dart';

class CadastrarUsuario extends StatefulWidget {
  const CadastrarUsuario({Key? key}) : super(key: key);

  @override
  _CadastrarUsuarioState createState() => _CadastrarUsuarioState();
}

class _CadastrarUsuarioState extends State<CadastrarUsuario> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController sobrenomeController = TextEditingController();
  TextEditingController cidadeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController dataNascimentoController = TextEditingController();
  TextEditingController telefoneController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  bool validateName(String text) {
    return RegExp(r'^[a-zA-Z]+$').hasMatch(text);
  }

  bool validatePhone(String text) {
    return RegExp(r'^[0-9]+$').hasMatch(text);
  }

  void onChangedValidatedText(String text, TextEditingController controller, bool Function(String) validator) {
    if (!validator(text)) {
      String validText = text.replaceAll(RegExp(r'[^a-zA-Z]'), ''); // Mantém apenas letras
      controller.value = controller.value.copyWith(
        text: validText,
        selection: TextSelection(baseOffset: validText.length, extentOffset: validText.length),
        composing: TextRange.empty,
      );
    }
  }

  void onChangedValidatedPhone(String text, TextEditingController controller, bool Function(String) validator) {
    if (!validator(text)) {
      String validText = text.replaceAll(RegExp(r'[^0-9]'), ''); // Mantém apenas números
      controller.value = controller.value.copyWith(
        text: validText,
        selection: TextSelection(baseOffset: validText.length, extentOffset: validText.length),
        composing: TextRange.empty,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Text('Voltar'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              "VAMOS COMEÇAR",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Color(0xFFE87C17),
              ),
            ),
            SizedBox(height: 40),
            Text(
              "REGISTRE-SE",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Color(0xFFE87C17),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: TextField(
                      controller: nomeController,
                      decoration: InputDecoration(
                        labelText: "Nome",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      onChanged: (text) {
                        onChangedValidatedText(text, nomeController, validateName);
                      },
                    ),
                  ),
                  SizedBox(width: 15),
                  Flexible(
                    child: TextField(
                      controller: sobrenomeController,
                      decoration: InputDecoration(
                        labelText: "Sobrenome",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      onChanged: (text) {
                        onChangedValidatedText(text, sobrenomeController, validateName);
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: "E-mail",
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Flexible(
                    child: TextField(
                      controller: dataNascimentoController,
                      decoration: InputDecoration(
                        labelText: "Data de Nascimento",
                        prefixIcon: Icon(Icons.date_range),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      onChanged: (text) {
                        onChangedValidatedPhone(text, dataNascimentoController, validatePhone);
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: TextField(
                      controller: telefoneController,
                      decoration: InputDecoration(
                        labelText: "Telefone",
                        prefixIcon: Icon(Icons.phone),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      onChanged: (text) {
                        onChangedValidatedPhone(text, telefoneController, validatePhone);
                      },
                    ),
                  ),
                  SizedBox(width: 15),
                  Flexible(
                    child: TextField(
                      controller: cidadeController,
                      decoration: InputDecoration(
                        labelText: "Cidade",
                        prefixIcon: Icon(Icons.location_city),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      onChanged: (text) {
                        onChangedValidatedText(text, cidadeController, validateName);
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      controller: senhaController,
                      decoration: InputDecoration(
                        labelText: "Senha",
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 50.0,
              padding: EdgeInsets.symmetric(
                  horizontal: 100),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFE87C17),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                child: Text(
                  'Concluir',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
