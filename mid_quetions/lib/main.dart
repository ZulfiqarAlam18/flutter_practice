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
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<Home> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? name, password, email, gender, dob;
  TextEditingController _dobController = TextEditingController();

  // Function to submit the form
  void submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailScreen(
            email: email!,
            dob: dob!,
            name: name!,
            gender: gender!,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up Form'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // Name Field
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
                  name = value;
                },
              ),
              SizedBox(height: 10),

              // Email Field
              TextFormField(
                decoration: InputDecoration(
                    label: Text('Email'), border: OutlineInputBorder()),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty || !value.contains('@')) {
                    return 'Enter Valid Email Address';
                  }
                  return null;
                },
                onSaved: (value) {
                  email = value;
                },
              ),
              SizedBox(height: 10),

              // Password Field
              TextFormField(
                decoration: InputDecoration(
                    label: Text('Password'), border: OutlineInputBorder()),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty || value.length <= 5) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
                onSaved: (value) {
                  password = value;
                },
              ),
              SizedBox(height: 10),

              // Date of Birth Field
              TextFormField(
                controller: _dobController,
                decoration: InputDecoration(
                    label: Text('Date Of Birth'), border: OutlineInputBorder()),
                onTap: () async {
                  FocusScope.of(context).requestFocus(FocusNode());
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                  );

                  if (pickedDate != null) {
                    _dobController.text =
                    "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
                    dob = _dobController.text;
                  }
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Date of Birth';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),

              // Gender Dropdown
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                    label: Text('Select Gender'), border: OutlineInputBorder()),
                items: ['Male', 'Female', 'Prefer not to say']
                    .map((label) => DropdownMenuItem(
                  child: Text(label),
                  value: label,
                ))
                    .toList(),
                onChanged: (value) => gender = value,
                validator: (value) {
                  if (value == null) {
                    return 'Select Gender';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),

              // Submit Button
              ElevatedButton(
                onPressed: submitForm,
                child: Text(
                  'Submit Form',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Screen to show user details
class DetailScreen extends StatelessWidget {
  final String name, email, dob, gender;

  DetailScreen({
    required this.name,
    required this.email,
    required this.dob,
    required this.gender,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Details'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: $name'),
            SizedBox(height: 10),
            Text('Email: $email'),
            SizedBox(height: 10),
            Text('Date of Birth: $dob'),
            SizedBox(height: 10),
            Text('Gender: $gender'),
          ],
        ),
      ),
    );
  }
}
