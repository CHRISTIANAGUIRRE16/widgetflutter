import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Term and conditions'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                  'https://picsum.photos/id/237/200/300'), //  URL de la imagen de alerta
              SizedBox(height: 10),
              Text('Adipisicing sunt elit tempor et duis consectetur amet sunt in exercitation est fugiat reprehenderit. Velit tempor ex amet do eiusmod esse incididunt commodo deserunt reprehenderit adipisicing. Est tempor velit in minim dolore proident mollit officia eiusmod ex labore pariatur nisi. Dolor qui officia duis adipisicing ex duis est sint aliquip nulla velit. Consectetur eiusmod ullamco reprehenderit consectetur commodo officia cupidatat nisi ex qui deserunt. Ad ad sit amet aute. Esse irure est officia Lorem nostrud.'),
            ],
          ),
          actions: [
            TextButton(
              child: Text('Cerrar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pet Store'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                'https://picsum.photos/id/237/200/300'), // URL imagen  logotipo
            SizedBox(height: 20),
            Text(
              '¡Bienvenido a nuestra tienda de mascotas!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              child: Text('Iniciar sesión'),
              onPressed: () {
                // Aqui se pone la lógica para iniciar sesión
              },
            ),
            TextButton(
              child: Text('Registrarse'),
              onPressed: () {
                // Aqui se pone la lógica para registrarse
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Términos y condiciones'),
              onPressed: () {
                _showAlert(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
