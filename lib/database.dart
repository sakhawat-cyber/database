import 'package:flutter/material.dart';

class database extends StatefulWidget {
  const database({Key? key}) : super(key: key);

  @override
  State<database> createState() => _databaseState();
}

class _databaseState extends State<database> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var addressController = TextEditingController();
  var passwordController = TextEditingController();
  var name, email, phone, address, password;
  var formKey = GlobalKey<FormState>();
  _handleSignUpData() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      print("Name is: ${this.name}");
      print("Email is: ${this.email}");
      print("Phone is: ${this.phone}");
      print("Address is: ${this.address}");
      print("Password is: ${this.password}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Page"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Sign up page",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.name,
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: "Enter Your Name",
                    ),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return ("Enter your first name");
                      }
                    },
                    onSaved: (value) {
                      this.name = value;
                    },
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: "Enter Your Email Address",
                    ),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return ("Enter your first name");
                      }
                    },
                    onSaved: (value) {
                      this.email = value;
                    },
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    controller: phoneController,
                    decoration: InputDecoration(
                      labelText: "Enter Your Phone Number",
                    ),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return ("Enter your phone number");
                      }
                    },
                    onSaved: (value) {
                      this.phone = value;
                    },
                  ),
                  TextFormField(
                    keyboardType: TextInputType.streetAddress,
                    controller: addressController,
                    decoration: InputDecoration(
                      labelText: "Enter Your Street Address",
                    ),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return ("Enter your address");
                      }
                    },
                    onSaved: (value) {
                      this.address = value;
                    },
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Enter Your Password",
                    ),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return ("Enter your password");
                      }
                    },
                    onSaved: (value) {
                      this.password = value;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                    onPressed: _handleSignUpData,
                    child: Text("Submit"),
                    elevation: 10,
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
