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
  TextEditingController confirmacaoSenhaController = TextEditingController();

  bool validateName(String text) {
    return RegExp(r'^[a-zA-Z]+$').hasMatch(text);
  }

  bool validateNameWithoutNumbers(String text) {
    return RegExp(r'^[a-zA-Z]+$').hasMatch(text);
  }

  bool validateCity(String text) {
    return RegExp(r'^[a-zA-Z ]+$').hasMatch(text);
  }

  bool validatePhone(String text) {
    return RegExp(r'^[0-9]+$').hasMatch(text);
  }

  bool validatePassword(String text) {
    return RegExp(r'^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[\W_]).{8,}$').hasMatch(text);
  }

  void onChangedValidatedText(String text, TextEditingController controller, bool Function(String) validator) {
    String validText = text;
    if (validator(text)) {
      controller.value = controller.value.copyWith(
        text: validText,
        selection: TextSelection(
          baseOffset: validText.length,
          extentOffset: validText.length,
        ),
        composing: TextRange.empty,
      );
    }
  }

  void onChangedValidatedCity(String text, TextEditingController controller, bool Function(String) validator) {
    if (validator(text)) {
      controller.value = controller.value.copyWith(
        text: text,
        selection: TextSelection(
          baseOffset: text.length,
          extentOffset: text.length,
        ),
        composing: TextRange.empty,
      );
    }
  }

  void onChangedValidatedPhone(String text, TextEditingController controller, bool Function(String) validator) {
    if (!validator(text)) {
      String validText = controller.text.replaceAll(RegExp(r'[^0-9]'), '');
      controller.value = controller.value.copyWith(
        text: validText,
        selection: TextSelection(
          baseOffset: validText.length,
          extentOffset: validText.length,
        ),
        composing: TextRange.empty,
      );
    }
  }

  PasswordStrength calculatePasswordStrength(String senha) {
    bool hasUppercase = false;
    bool hasLowercase = false;
    bool hasDigit = false;
    bool hasSpecialCharacter = false;

    for (int i = 0; i < senha.length; i++) {
      if (senha[i].toUpperCase() == senha[i] && senha[i].toLowerCase() != senha[i]) {
        hasUppercase = true;
      } else if (senha[i].toLowerCase() == senha[i] && senha[i].toUpperCase() != senha[i]) {
        hasLowercase = true;
      } else if (int.tryParse(senha[i]) != null) {
        hasDigit = true;
      } else {
        hasSpecialCharacter = true;
      }
    }

    if (senha.length >= 8) {
      if (hasUppercase && hasLowercase && hasDigit && hasSpecialCharacter) {
        return PasswordStrength.Strong;
      } else if ((hasUppercase || hasLowercase) && hasDigit) {
        return PasswordStrength.Medium;
      }
    }

    return PasswordStrength.Weak;
  }

  Color getStrengthColor(PasswordStrength strength) {
    switch (strength) {
      case PasswordStrength.Weak:
        return Colors.red;
      case PasswordStrength.Medium:
        return Colors.amber;
      case PasswordStrength.Strong:
        return Colors.green;
    }
  }

  void showRegistroSucessoDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Registro Concluído',
            textAlign: TextAlign.center,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.check_circle, color: Colors.green, size: 50),
              SizedBox(height: 20),
              Text(
                'Seu registro foi concluído com sucesso!',
                textAlign: TextAlign.center,
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
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
                    child: TextFormField(
                      controller: nomeController,
                      decoration: InputDecoration(
                        labelText: "Nome",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      onChanged: (text) {
                        onChangedValidatedText(text, nomeController, validateNameWithoutNumbers);
                      },
                    ),
                  ),
                  SizedBox(width: 15),
                  Flexible(
                    child: TextFormField(
                      controller: sobrenomeController,
                      decoration: InputDecoration(
                        labelText: "Sobrenome",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      onChanged: (text) {
                        onChangedValidatedText(text, sobrenomeController, validateNameWithoutNumbers);
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
                    child: TextFormField(
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
                    child: TextFormField(
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
                    child: TextFormField(
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
                    child: TextFormField(
                      controller: cidadeController,
                      decoration: InputDecoration(
                        labelText: "Cidade",
                        prefixIcon: Icon(Icons.location_city),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      onChanged: (text) {
                        onChangedValidatedCity(text, cidadeController, validateCity);
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
                    child: TextFormField(
                      controller: senhaController,
                      decoration: InputDecoration(
                        labelText: "Senha",
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              obscureTextSenha = !obscureTextSenha;
                            });
                          },
                          child: Icon(
                            obscureTextSenha ? Icons.visibility : Icons.visibility_off,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      onChanged: (text) {
                        onChangedValidatedText(text, senhaController, validatePassword);
                        setState(() {
                          strength = calculatePasswordStrength(text);
                        });
                      },
                      obscureText: obscureTextSenha,
                    ),
                  ),
                  SizedBox(width: 15),
                  Flexible(
                    child: TextFormField(
                      controller: confirmacaoSenhaController,
                      decoration: InputDecoration(
                        labelText: "Confirmação da Senha",
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              obscureTextSenhaConfirmacao = !obscureTextSenhaConfirmacao;
                            });
                          },
                          child: Icon(
                            obscureTextSenhaConfirmacao ? Icons.visibility : Icons.visibility_off,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      onChanged: (text) {
                        onChangedValidatedText(text, confirmacaoSenhaController, validatePassword);
                      },
                      obscureText: obscureTextSenhaConfirmacao,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => Container(
                  width: 60,
                  height: 15,
                  margin: EdgeInsets.only(right: index < 2 ? 20 : 0),
                  decoration: BoxDecoration(
                    color: getStrengthColor(strength),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 50.0,
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: ElevatedButton(
                onPressed: () {
                  if (nomeController.text.isEmpty ||
                      sobrenomeController.text.isEmpty ||
                      emailController.text.isEmpty ||
                      dataNascimentoController.text.isEmpty ||
                      telefoneController.text.isEmpty ||
                      cidadeController.text.isEmpty ||
                      senhaController.text.isEmpty ||
                      confirmacaoSenhaController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Há campos que não foram preenchidos."),
                        backgroundColor: Colors.red,
                      ),
                    );
                  } else if (senhaController.text == confirmacaoSenhaController.text) {
                    showRegistroSucessoDialog();
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("As senhas não coincidem."),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
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

enum PasswordStrength {
  Weak,
  Medium,
  Strong,
}

bool obscureTextSenha = true;
bool obscureTextSenhaConfirmacao = true;
PasswordStrength strength = PasswordStrength.Weak;