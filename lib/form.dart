import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Entrada de Dados',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Entrada de Dados'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final _nomeController = TextEditingController();
  final _idadeController = TextEditingController();
  final _emailController = TextEditingController();
  final _cellController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _incrementCounter() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title:
          Text(
            widget.title,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        toolbarHeight: 60,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(40.0),
        child: Form(
          key: _formKey,
          child: Column(
          children: <Widget> [
            const Text('Seja bem vindo! Aplicativo para \n entrada de dados',
              style: TextStyle(color: Colors.lightBlue, fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: TextFormField(
                controller: _nomeController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Nome:'
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Digite seu nome completo';
                  }
                    return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: TextFormField(
                controller: _idadeController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Idade:'
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Digite sua idade';
                  }
                  return null;
                },
                maxLength: 3,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'E-mail:'
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Digite seu email';
                  }
                  return null;
                },
              ),
            ),
           Padding(
              padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: TextFormField(
                controller: _cellController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Celular:'
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Digite seu número completo';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton.icon(
                onPressed: () {
                  if (_formKey.currentState != null) {
                  _formKey.currentState!.reset();}
            },
                icon: const Icon(Icons.save),
                label: const Text('Salvar'),
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(const Size(130.0, 50.0)),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                  ),
                ),
              ),
            )
          ],
          ),
        ),
      ),
    );
  }
}
