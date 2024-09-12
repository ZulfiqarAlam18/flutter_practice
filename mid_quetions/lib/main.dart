import 'package:flutter/material.dart';

void main() {
  runApp(const SignUpPage());
}

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<Home> {
  final key = GlobalKey<FormState>();
  String? name, password, email, gender, dob;
  TextEditingController _dobController = TextEditingController();
  void submitForm() {
    if (key.currentState!.validate()) {
      key.currentState!.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up form'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: key,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    label: Text('Name'), border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Name';
                  }
                  return null;
                },
                onSaved: (value) {
                  name == value;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    label: Text('Email'), border: OutlineInputBorder()),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Valid Email Address';
                  }
                  return null;
                },
                onSaved: (value) {
                  email == value;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    label: Text('Password'), border: OutlineInputBorder()),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty || value.length <= 5) {
                    return 'Password must of at least 6 digits';
                  }
                  return null;
                },
                onSaved: (value) {
                  password == value;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    label: Text('Name'), border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Name';
                  }
                  return null;
                },
                onSaved: (value) {
                  name == value;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    label: Text('Name'), border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Name';
                  }
                  return null;
                },
                onSaved: (value) {
                  name == value;
                },
              ),
              SizedBox(
                height: 10,

              ),
              ElevatedButton(onPressed: submitForm, child: Text('Submit Form',style: TextStyle(color: Colors.black),),style: ElevatedButton.styleFrom(backgroundColor: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// void main() => runApp(SignUpApp());
//
// class SignUpApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Sign Up Form',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: SignUpScreen(),
//     );
//   }
// }
//
// class SignUpScreen extends StatefulWidget {
//   @override
//   _SignUpScreenState createState() => _SignUpScreenState();
// }
//
// class _SignUpScreenState extends State<SignUpScreen> {
//   final _formKey = GlobalKey<FormState>();
//   String? _email, _password, _dob, _gender;
//   TextEditingController _dobController = TextEditingController();
//
//   // Function to submit the form
//   void _submitForm() {
//     if (_formKey.currentState!.validate()) {
//       _formKey.currentState!.save();
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => DetailsScreen(
//             email: _email!,
//             dob: _dob!,
//             gender: _gender!,
//           ),
//         ),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Sign Up')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 // Email
//                 TextFormField(
//                   decoration: InputDecoration(labelText: 'Email'),
//                   keyboardType: TextInputType.emailAddress,
//                   validator: (value) {
//                     if (value == null || value.isEmpty || !value.contains('@')) {
//                       return 'Please enter a valid email';
//                     }
//                     return null;
//                   },
//                   onSaved: (value) => _email = value,
//                 ),
//                 SizedBox(height: 16),
//
//                 // Password
//                 TextFormField(
//                   decoration: InputDecoration(labelText: 'Password'),
//                   obscureText: true,
//                   validator: (value) {
//                     if (value == null || value.length < 6) {
//                       return 'Password must be at least 6 characters';
//                     }
//                     return null;
//                   },
//                   onSaved: (value) => _password = value,
//                 ),
//                 SizedBox(height: 16),
//
//                 // Date of Birth
//                 TextFormField(
//                   controller: _dobController,
//                   decoration: InputDecoration(labelText: 'Date of Birth'),
//                   onTap: () async {
//                     FocusScope.of(context).requestFocus(FocusNode());
//                     DateTime? pickedDate = await showDatePicker(
//                       context: context,
//                       initialDate: DateTime.now(),
//                       firstDate: DateTime(1900),
//                       lastDate: DateTime.now(),
//                     );
//                     if (pickedDate != null) {
//                       _dobController.text =
//                       "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
//                       _dob = _dobController.text;
//                     }
//                   },
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please select your date of birth';
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(height: 16),
//
//                 // Gender
//                 DropdownButtonFormField<String>(
//                   decoration: InputDecoration(labelText: 'Gender'),
//                   items: ['Male', 'Female', 'Other']
//                       .map((label) => DropdownMenuItem(
//                     child: Text(label),
//                     value: label,
//                   ))
//                       .toList(),
//                   onChanged: (value) => _gender = value,
//                   validator: (value) {
//                     if (value == null) {
//                       return 'Please select your gender';
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(height: 16),
//
//                 // Submit Button
//                 Center(
//                   child: ElevatedButton(
//                     onPressed: _submitForm,
//                     child: Text('Sign Up'),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// // Screen to display user details after sign up
// class DetailsScreen extends StatelessWidget {
//   final String email, dob, gender;
//
//   DetailsScreen({
//     required this.email,
//     required this.dob,
//     required this.gender,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('User Details')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text('Email: $email'),
//             SizedBox(height: 10),
//             Text('Date of Birth: $dob'),
//             SizedBox(height: 10),
//             Text('Gender: $gender'),
//           ],
//         ),
//       ),
//     );
//   }
// }
