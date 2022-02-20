import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Text('LogIn',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,

              ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (value){
                  print(value);
                },
                onChanged: (value){
                  print(value);
                },
                decoration: InputDecoration(
                  //hintText: 'Email',
                  labelText: 'Email ',
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                  border: OutlineInputBorder(
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                onFieldSubmitted: (value){
                  print(value);
                },
                onChanged: (value){
                  print(value);
                },
                decoration: InputDecoration(
                  //hintText: 'Email',
                  labelText: 'Password ',
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  suffixIcon:Icon(
                    Icons.remove_red_eye,
                  ) ,
                  border: OutlineInputBorder(
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                color: Colors.blue,

                child: MaterialButton(
                    onPressed: (){
                      print(emailController);
                      print(passwordController);
                    },
                  child: Text(
                      'LOGIN',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont\'t have an account?',
                  ),
                  TextButton(onPressed: (){}, child: Text(
                    'Register Now',
                  ),),
                ],
              ),

            ],
          ),
        ),
      ),

    );
  }
}
