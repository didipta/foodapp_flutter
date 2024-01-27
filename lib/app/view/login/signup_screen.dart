import 'package:flutter/material.dart';
import 'package:foodapp/app/routes/router.dart';
import 'package:foodapp/base/constant.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            _buildTextField("Username", Icons.account_circle, usernameController),
            SizedBox(height: 20.0),
            _buildTextField("PhoneNumber", Icons.phone, passwordController, isPassword: true),
              SizedBox(height: 20.0),
            _buildTextField("Password", Icons.lock, passwordController, isPassword: true),
            SizedBox(height: 20.0),
            _buildTextField("Confirm Password", Icons.lock, confirmPasswordController, isPassword: true),
            SizedBox(height: 20.0),
            _buildSignUpButton(context),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  TextButton(
                    onPressed: () {
                      Constant.sendToNext(context, Routes.loginRoute);
                    },
                    child: Text("Login"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            //socal media
            SizedBox(height: 20.0),   
            //socal media login ontab
            Text(
              "Or login with",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
           SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    // Perform login with Google
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red.withOpacity(0.7),
                    ),
                    child: Icon(
                      Icons.g_mobiledata,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                SizedBox(width: 20.0),
                GestureDetector(
                  onTap: () {
                    // Perform login with Facebook
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red.withOpacity(0.7),
                    ),
                    child: Icon(
                      Icons.facebook,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, IconData icon, TextEditingController controller, {bool isPassword = false}) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      style: TextStyle(
        color: Colors.black,
        fontSize: 16.0,
      ),
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(
          icon,
          color: Colors.red,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red.withOpacity(0.7), width: 1.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }

  Widget _buildSignUpButton(context) {
    return ElevatedButton(
      onPressed: () {
        // Access the username, password, and confirm password using the controllers
        String username = usernameController.text;
        String password = passwordController.text;
        String confirmPassword = confirmPasswordController.text;
        Constant.sendToNext(context, Routes.verifyRoute);
        // Add your sign-up logic here
        print("Username: $username, Password: $password, Confirm Password: $confirmPassword");

        Constant.sendToNext(context, Routes.verifyRoute); // Replace with the appropriate route
      },
      child: Text("Sign Up"),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        padding: EdgeInsets.symmetric(horizontal: 50.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}


