import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _phoneController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    final _formkey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white70,
          ),
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Form(
            key: _formkey,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: _phoneController,
                    maxLength: 11,
                    decoration: InputDecoration(
                      hintText: 'Write your mobile number',
                      labelText: 'Write Number',
                      helperText:
                      'Write your mobile number without country code',
                      prefixIcon: Icon(Icons.phone),
                      suffixIcon: Icon(Icons.check),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    validator: (value) {
                      if (value != null || value != value?.isNotEmpty) {
                        return 'Please Enter Phone Number';
                      } else if (value?.length != 11) {
                        return 'Please Enter Correct Phone Number';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password ',
                      labelText: 'Write your passowrd',
                      helperText:
                      'Write your mobile number without country code',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    validator: (value) {
                      if (value != null || value != value?.isNotEmpty) {
                        return 'Please Enter Currect Password';
                      } else if (value!.length < 8) {
                        return 'Password must be 8 character length';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        if(_formkey.currentState!.validate()){
                          print(_phoneController.text);
                          print(_passwordController.text);

                          _phoneController.clear();
                          _passwordController.clear();
                        }
                      },
                      icon: Icon(Icons.arrow_forward),
                      label: Text(
                        'Submit',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
