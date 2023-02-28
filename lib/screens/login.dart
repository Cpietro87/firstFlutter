import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        elevation: 10.0,
        
      ),
      
      body: ListView(
        
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 100.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
              'MI CUOTA DEPORTIVA',
              style: TextStyle(
                color: Colors.green,
                fontSize: 18.0,
              ),
            ),
             const SizedBox(
                width: 80.0,
                height: 40.0,
              ),
              
              Image.asset('images/logo1.png', 
              width: 100.0,
              height: 80.0,),
              // const CircleAvatar(
              //   radius: 50.0,
              //   backgroundColor: Colors.green,
              //   backgroundImage: AssetImage('images/logo1.png'),
              // ),
              const SizedBox(
                width: 80.0,
                height: 40.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                decoration: InputDecoration(
                    hintText: 'Username',
                    labelText: 'Username',
                    prefixIcon: const Icon(Icons.supervised_user_circle),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                        
              ),
              const SizedBox(
                width: 80.0,
                height: 20.0,
              ),
              // TextField(
              //   enableInteractiveSelection: false,
              //   decoration: InputDecoration(
              //       hintText: 'Email',
              //       labelText: 'Email',
              //       prefixIcon: const Icon(Icons.alternate_email),
              //       border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(20.0))),
              // ),
              // const Divider(
              //   height: 18.0,
              // ),
              TextField(
                enableInteractiveSelection: false,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Contraseña',
                    labelText: 'Contraseña',
                    prefixIcon: const Icon(Icons.lock_outline),
                    border: OutlineInputBorder(
                           borderSide: const BorderSide(
                            color: Colors.green, 
                          ),
                        borderRadius: BorderRadius.circular(20.0),
                           // ignore: prefer_const_constructors
                        )
                        ),
              ),
              
              // Container(
              //   margin: const EdgeInsets.all(30.0),
              //   width: MediaQuery.of(context).size.width * 1.5,
                
              //   child: ElevatedButton(
              //       onPressed: () {
              //         print('on click 1');
              //       },
              //       child: const Text('Sing In')),
              // ),
              SizedBox(
                width: 200.0,

                child: TextButton(
                  onPressed: () {
                    print('on click 2');
                  },
                  child: const Text('Sing in'),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
