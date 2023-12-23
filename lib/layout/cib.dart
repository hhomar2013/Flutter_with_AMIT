import 'package:flutter/material.dart';
import 'package:mtg/shared/components/components.dart';
import 'package:mtg/shared/components/constant.dart';

class cib extends StatelessWidget {
  const cib({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Image.asset('assets/img/cibLogo-remove.png',
          fit: BoxFit.cover,
          height: 20,
          width: 20,
        ),
        leadingWidth: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/backGround.jpg'),
            fit: BoxFit.cover,
           colorFilter: ColorFilter.mode(Colors.blueAccent.withOpacity(0.9), BlendMode.modulate,)
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                Text('UserName',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25
                ),
                ),
                TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      )
                    )
                  ),
                ),
              SizedBox(height: 15,),
              Text('Password',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        )
                    )
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(2),
                child: Row(
                  children: [
                    defaultButton(function: (){},
                        width: 270,
                        text: 'Login',
                        backGround: Colors.deepOrangeAccent
                    ),
                    SizedBox(width: 10,),
                    defaultIconButton(
                      width: 60,
                      Iconbtn: Icons.fingerprint,
                      function: (){},
                      backGround: Colors.deepOrangeAccent,
                      iconColor: Colors.white
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              defaultButton(function: (){},
                width: 200,
                text: 'Register New User',
                backGround: Colors.transparent,
              ),
              defaultButton(function: (){},
                  width: 100,
                  text: 'Login',
                  backGround: Colors.transparent,
              ),
              SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                   children: [
                        Column(
                          children: [
                            Icon(Icons.vpn_lock,
                            color: Colors.white,
                              size: 50,
                            ),
                            Text('IBAN',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                            ),
                          ],
                        ) , //IBAN
                        SizedBox(width: 60,),
                       Column(
                       children: [
                         Icon(Icons.phone_android,
                           color: Colors.white,
                           size: 50,
                         ),
                         Text('Tutorials',
                           style: TextStyle(
                               fontSize: 20,
                               fontWeight: FontWeight.bold,
                               color: Colors.white
                           ),
                         ),
                       ],
                     ) ,
                     SizedBox(width: 80,),
                     Column(
                       children: [
                         Icon(Icons.vpn_lock,
                           color: Colors.white,
                           size: 50,
                         ),
                         Text('IBAN',
                           style: TextStyle(
                               fontSize: 20,
                               fontWeight: FontWeight.bold,
                               color: Colors.white
                           ),
                         ),
                       ],
                     ) ,
                   ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Icon(Icons.vpn_lock,
                          color: Colors.white,
                          size: 50,
                        ),
                        Text('IBAN',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                      ],
                    ) , //IBAN
                    SizedBox(width: 80,),
                    Column(
                      children: [
                        Icon(Icons.vpn_lock,
                          color: Colors.white,
                          size: 50,
                        ),
                        Text('IBAN',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                      ],
                    ) ,
                    SizedBox(width: 80,),
                    Column(
                      children: [
                        Icon(Icons.vpn_lock,
                          color: Colors.white,
                          size: 50,
                        ),
                        Text('IBAN',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                      ],
                    ) ,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}