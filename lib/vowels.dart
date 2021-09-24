import 'package:flutter/material.dart';
import 'package:flutter_assignment_3/style.dart';

class Vowels extends StatefulWidget {
  const Vowels({Key? key}) : super(key: key);

  @override
  _VowelsState createState() => _VowelsState();
}

class _VowelsState extends State<Vowels> {
  TextEditingController characterController = TextEditingController();
  String? character;
  String? result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.name,
              textAlign: TextAlign.center,
              maxLength: 1,
              controller: characterController,
              decoration: InputDecoration(
                hintText: 'Enter Character',
                // labelText: 'Enter Character',
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    character = characterController.text;
                    if ((character == 'A' || character == 'a') ||
                        (character == 'E' || character == 'e') ||
                        (character == 'I' || character == 'i') ||
                        (character == 'O' || character == 'o') ||
                        (character == 'U' || character == 'u')) {
                      result = 'Vowel ';
                      print('Input Character $character');
                    } else {
                      result = 'Not Vowel or Consonant';
                    }
                  });
                },
                child: const Text('Validate Character')),
            const SizedBox(
              height: 30,
            ),
            Text(
              '$result Character $character',
              style: myNumber,
            )
          ],
        ),
      ),
    );
  }
}
