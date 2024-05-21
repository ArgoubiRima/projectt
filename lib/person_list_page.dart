import 'package:flutter/material.dart';

class PersonListPage extends StatefulWidget {
  const PersonListPage({Key? key}) : super(key: key);

  @override
  _PersonListPageState createState() => _PersonListPageState();
}

class _PersonListPageState extends State<PersonListPage> {
  List<Map<String, String>> persons = [
    {'name': 'Personne 1', 'role': 'Admin'},
    {'name': 'Personne 2', 'role': 'User'},
    {'name': 'Personne 3', 'role': 'Guest'}
  ]; // Liste de personnes avec rôles

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liste des personnes'),
      ),
      body: Container(
        color: Colors.blue, // Fond bleu
        child: Center(
          child: SingleChildScrollView( // Ajout d'un SingleChildScrollView pour gérer le débordement
            child: Container(
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(20.0),
              color: Colors.white, // Carreau blanc
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row( // Row avec le texte et l'image
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'SecureTouch',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Image.asset(
                        'image/logo.jpeg',
                        height: 100.0,
                        width: 100.0,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    'Liste des personnes :', // Ajout du texte avant le DataTable
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/121'); // Navigation vers la page AddFormulaire
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white, backgroundColor: Colors.blue,
                      ),
                      child: const Text(
                        'Add a New User',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columns: const [
                        DataColumn(label: Text('ID')),
                        DataColumn(label: Text('Last Name')),
                        DataColumn(label: Text('First Name')),
                        DataColumn(label: Text('Email')),
                        DataColumn(label: Text('Address')),
                        DataColumn(label: Text('Phone Number')),
                        DataColumn(label: Text('Date of Birth')),
                        DataColumn(label: Text('Gender')),
                        DataColumn(label: Text('Photo')),
                        DataColumn(label: Text('Role')),
                        DataColumn(label: Text('Action')),
                      ],
                      rows: persons.map((person) {
                        return DataRow(cells: [
                          DataCell(Text('ID')), // Remplacez par les données réelles
                          DataCell(Text('Nom')), // Remplacez par les données réelles
                          DataCell(Text('Prénom')), // Remplacez par les données réelles
                          DataCell(Text('Email')), // Remplacez par les données réelles
                          DataCell(Text('Adresse')), // Remplacez par les données réelles
                          DataCell(Text('Téléphone')), // Remplacez par les données réelles
                          DataCell(Text('Date de naissance')), // Remplacez par les données réelles
                          DataCell(Text('Genre')), // Remplacez par les données réelles
                          DataCell(Text('Photo')), // Remplacez par les données réelles
                          DataCell(Text(person['role'] ?? 'N/A')), // Colonne Role
                          DataCell(Row( // Row pour les boutons d'action
                            children: [
                              IconButton( // Bouton d'édition
                                icon: const Icon(Icons.edit),
                                onPressed: () {
                                  // Action à effectuer lors de l'appui sur le bouton d'édition
                                },
                              ),
                              IconButton( // Bouton de suppression
                                icon: const Icon(Icons.delete),
                                onPressed: () {
                                  // Action à effectuer lors de l'appui sur le bouton de suppression
                                },
                              ),
                            ],
                          )),
                        ]);
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
