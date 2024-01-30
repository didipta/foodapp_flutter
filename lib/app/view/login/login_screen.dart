import 'package:flutter/material.dart';
import 'package:foodapp/app/routes/router.dart';
import 'package:foodapp/base/constant.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //logo add

            Container(
              child: Image.asset('assets/logo.png',height: 200,width: 200,),
            ),
           
         
            SizedBox(height: 20.0),
            Text(
              "Login to your account",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20.0),
            _buildTextField("Username", Icons.account_circle, usernameController),
            SizedBox(height: 20.0),
            _buildTextField("Password", Icons.lock, passwordController, isPassword: true),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Constant.sendToNext(context, Routes.verifyRoute);
                    },
                    child: Text("Forgot Password?"),
                  ),
                ],
              ),
            ),
            
            SizedBox(height: 20.0),
            _buildLoginButton(context),
            SizedBox(height: 20.0),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Constant.sendToNext(context, Routes.registerRoute);
                    },
                    child: Text("Sign Up"),
                  ),
                ],
              ),
            )
            ,
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

  Widget _buildLoginButton(context) {
    return ElevatedButton(
      onPressed: () {
        // Access the username and password using the controllers
        String username = usernameController.text;
        String password = passwordController.text;

        // Add your login logic here
        print("Username: $username, Password: $password");
        Constant.sendToNext(context, Routes.homepageRoute);

        
      },
      child: Text("Login"),
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
