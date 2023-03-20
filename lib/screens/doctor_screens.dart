
import 'package:flutter/material.dart';

class ProfileDoctor extends StatelessWidget {
  final String name;
  final String profession;
  final String email;
  final String phone;
  final String photoUrl;
  final List<String> patients;

  const ProfileDoctor({super.key, required this.name, required this.profession, required this.patients, required this.email, required this.phone, required this.photoUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(photoUrl),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(profession),
                      ],
                    ),
                  ),
                        
                ],
              ),
            ),
            const SizedBox(height: 16,),
            const Text('Informacion Personal',
             style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16,),
            Text(email),
            const SizedBox(height: 16,),
            Text(phone),
            const SizedBox(height: 16),
            const Text(
              'Ultimos pasientes',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: patients.length,
              itemBuilder: (context, index) {
                final patient = patients[index];
                return ListTile(
                  title: Text(patient),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}