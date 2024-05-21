// main.dart
import 'package:flutter/material.dart';
import 'package:untitled10/profil-user.dart';
import 'addformulaire.dart';
import 'change-password.dart';
import 'fingerprint.dart';
import 'login_page.dart';
import 'person_list_page.dart'; // Importez la nouvelle classe
import 'ModifyPerson.dart'; // Importez la classe ModifyPerson

void main() {
  runApp(MaterialApp(
    title: 'Mon App',
    initialRoute: '/', // Définir la route initiale
    routes: {
      '/22': (context) => const LoginPage(), // Page de connexion
      '/444': (context) => const PersonListPage(), // Nouvelle page
      '/121': (context) => const AddFormulaire(), // Nouvelle route pour AddFormulaire
      '/change': (context) => const ChangePasswordPage(), // Nouvelle route pour ChangePasswordPage
      '/44': (context) => UserProfile(), // Nouvelle route pour ProfileUser
      '/111': (context) =>  ModifyPerson(),
      '/': (context) => ImageUploadPage(), // Nouvelle route pour ImagePage


    },
  ));
}

class SamplePage extends StatelessWidget {
  const SamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/sample_image.jpg', // Changer le chemin de l'image en fonction de votre structure de projet
              width: 200, // Largeur de l'image
              height: 200, // Hauteur de l'image
            ),
            const SizedBox(height: 20), // Espacement entre l'image et le texte
            Text(
              'This is a sample page', // Texte de l'étiquette
              style: TextStyle(
                fontSize: 20, // Taille de police de l'étiquette
              ),
            ),
            const SizedBox(height: 20), // Espacement entre le texte et le bouton
            ElevatedButton(
              onPressed: () {
                // Action à effectuer lors du clic sur le bouton
              },
              child: Text('Finish'), // Texte du bouton en anglais
            ),
          ],
        ),
      ),
    );
  }
}
