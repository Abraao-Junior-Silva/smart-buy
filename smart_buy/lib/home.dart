// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            // CONTAINER DE BOAS VINDAS AO USUÁRIO
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: 30.0, top: 30.0, right: 30.0, bottom: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Icon(
                        Icons.person_sharp,
                        size: 50.0,
                        color: Colors.white
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color(0xFFE87C17)
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Olá Camile',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Color(0xFFE87C17)
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 7.0),
                        Row(
                          children: [
                            Text(
                              'Encontre tudo que você precisa, em um só lugar!',
                              style: TextStyle(fontSize: 12.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ),
            ),
            // BLOCO PRINCIPAL DA HOME
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Container(
                height: 200.0,
                width: 350.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[400],
                ),
              ),
            ),
            // ROW FAVORITOS
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row (
                children: [
                  Container(
                    child: Padding (
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "Favoritos >",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black87,
                        ),
                      ),
                    )
                  )
                ]
              )
            ),
            // BLOCO DE CONTAINERS DE FAVORITOS
            Row (
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Container(
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 70.0, top: 50.0),
                      child: Container(
                        child: Icon(
                          Icons.star,
                          color: Color(0xFFE87C17),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Container(
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 70.0, top: 50.0),
                      child: Container(
                        child: Icon(
                          Icons.star,
                          color: Color(0xFFE87C17),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Container(
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 70.0, top: 50.0),
                      child: Container(
                        child: Icon(
                          Icons.star,
                          color: Color(0xFFE87C17),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // ROW NAVEGUE POR ESTABELECIMENTOS
            Padding(
              padding: EdgeInsets.only(left: 10.0, top: 30.0, bottom: 10.0),
              child: Row (
                children: [
                  Container(
                    child: Padding (
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "Navegue por estabelecimento >",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black87,
                        ),
                      ),
                    )
                  )
                ]
              )
            ),
            // BLOCO DE ESTABELECIMENTOS
            Row (
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Container(
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 70.0, top: 50.0),
                      child: Container(
                        child: Icon(
                          Icons.star,
                          color: Color(0xFFE87C17),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Container(
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 70.0, top: 50.0),
                      child: Container(
                        child: Icon(
                          Icons.star,
                          color: Color(0xFFE87C17),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Container(
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 70.0, top: 50.0),
                      child: Container(
                        child: Icon(
                          Icons.star,
                          color: Color(0xFFE87C17),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // ROW ICONES DO APP(HOME, FAVORITOS, CARRINHO, PERFIL)
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30.0, top: 20.0, right: 40.0, bottom: 20.0),
                  child: Icon (
                    Icons.home,
                    color: Color(0xFFE87C17),
                    size: 40.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0, top: 20.0, right: 40.0, bottom: 20.0),
                  child: Icon (
                    Icons.favorite,
                    color: Colors.grey[400],
                    size: 40.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0, top: 20.0, right: 40.0, bottom: 20.0),
                  child: Icon (
                    Icons.shopping_cart,
                    color: Colors.grey[400],
                    size: 40.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0, top: 20.0, right: 20.0, bottom: 20.0),
                  child: Icon (
                    Icons.person,
                    color: Colors.grey[400],
                    size: 40.0,
                  ),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}
