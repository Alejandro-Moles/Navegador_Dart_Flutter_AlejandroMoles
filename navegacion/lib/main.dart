import 'package:flutter/material.dart';
import 'package:navegacion/paginas/pagina2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mi App",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  final texto = TextEditingController();

  String url = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navegacion"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //este textfield tendra un diseño en el que le se mostrara una ayuda para saber que escribir, a parte de los diferentes elementos del diseño
            TextField(
              controller: texto,
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                    //tendra un icono de search
                    Icons.search,
                    color: Colors.lightBlue,
                  ),
                  //un hint text, que es el que se mostrara hasta que se escriba algo en el buscador
                  hintText: "Dirección",
                  helperText: "Dirección de la pagina web",
                  contentPadding: EdgeInsets.all(20),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide:
                          BorderSide(color: Colors.lightBlue, width: 5)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide:
                          BorderSide(color: Colors.lightBlue, width: 5)),
                  labelText: 'Buscador'),
            ),
            RaisedButton(
                color: Colors.indigo,
                textColor: Colors.white,
                shape: StadiumBorder(),
                child: const Text(
                  "BUSCAR",
                  style: TextStyle(fontSize: 30),
                ),
                onPressed: () => {
                      //cuando pulso el boton, recojo en un controlador el texto que hay en el textfield, para luego enviarlo a la pantalla 2
                      url = texto.text,
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Pagina2(url)))
                    })
          ],
        ),
      ),
    );
  }
}
