import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  const FormDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
          data: ThemeData(
              primaryColor: Colors.black, primaryColorDark: Colors.black),
          child: Container(
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [FormTextFieldDemo()],
            ),
          )),
    );
  }
}

class FormTextFieldDemo extends StatefulWidget {
  const FormTextFieldDemo({super.key});

  @override
  State<FormTextFieldDemo> createState() => _FormTextFieldDemoState();
}

class _FormTextFieldDemoState extends State<FormTextFieldDemo> {
  final registerFormKey = GlobalKey<FormState>();
  String? username, password;
  AutovalidateMode validateMode = AutovalidateMode.disabled;

  String? validateUsername(String value) {
    if (value.isEmpty) {
      return 'Username is required';
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.isEmpty) {
      return 'Password is required';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: registerFormKey,
        child: Column(
          children: [
            TextFormField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  label: Text('Username'),
                  helperText: '',
                  labelStyle: TextStyle(color: Colors.black),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
              onSaved: (value) {
                username = value;
              },
              validator: (value) => validateUsername(value ?? ''),
              autovalidateMode: validateMode,
            ),
            TextFormField(
              cursorColor: Colors.black,
              obscureText: true,
              decoration: InputDecoration(
                  label: Text('Password'),
                  helperText: '',
                  labelStyle: TextStyle(color: Colors.black),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
              onSaved: (value) {
                password = value;
              },
              validator: (value) => validatePassword(value ?? ''),
              autovalidateMode: validateMode,
            ),
            SizedBox(
              height: 32,
            ),
            Container(
                width: double.infinity,
                child: MaterialButton(
                    child: Text(
                      'Register',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Theme.of(context).focusColor,
                    highlightColor: Colors.black,
                    elevation: 0.0,
                    highlightElevation: 0.0,
                    onPressed: () {
                      if (registerFormKey.currentState?.validate() ?? false) {
                        registerFormKey.currentState?.save();
                        debugPrint('Username - $username');
                        debugPrint('Password - $password');

                        Scaffold.of(context)
                            .showBottomSheet((context) => Container(
                                width: double.infinity,
                                color: Colors.brown,
                                height: 100,
                                alignment: Alignment.center,
                                child: Text(
                                  'Registering...',
                                  style: TextStyle(color: Colors.white),
                                )));
                      } else {
                        setState(() {
                          this.validateMode =
                              AutovalidateMode.onUserInteraction;
                        });
                      }
                    })),
          ],
        ));
  }
}

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();

    textEditingController.text = 'Hello~';
    textEditingController.addListener(() {
      debugPrint('Text change: ${textEditingController.text}');
    });
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      cursorColor: Colors.black,
      cursorWidth: 1.0,
      controller: textEditingController,
      // onChanged: (value) {
      //   debugPrint('正在输入：$value');
      // },
      onSubmitted: (value) {
        debugPrint('结束输入：$value');
      },
      decoration: InputDecoration(
          focusColor: Colors.orange,
          fillColor: Colors.grey[100],
          hoverColor: Colors.blue,
          icon: Icon(
            Icons.subject,
          ),
          label: Text('Title'),
          iconColor: Colors.black,
          labelStyle: TextStyle(color: Colors.black),
          hintText: 'Enter the post title please.',
          focusedBorder: InputBorder.none,
          filled: true),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  const ThemeDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).focusColor,
    );
  }
}
