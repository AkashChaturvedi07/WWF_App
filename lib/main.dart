import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("WWF")),body:
    MyCustomForm(),
      );
  }
}
// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Define a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  String convert(i){
      return i.toString();
  }
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return SingleChildScrollView(
          child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
                // Add TextFormFields and ElevatedButton here.

                TextFormField(
  // The validator receives the text that the user has entered.
   decoration: const InputDecoration(
      icon: Icon(Icons.person),
      //hintText: 'What do people call you?',
      labelText: 'Name *',
  ),
  validator: (value) {
      if (value.isEmpty) {
        return 'Please enter some text';
      }
      return null;
  },
),
TextFormField(
  // The validator receives the text that the user has entered.
 decoration: const InputDecoration(
      icon: Icon(Icons.person),
      //hintText: 'How many members are there in the house?',
      labelText: 'Family Members *',
  ),
  validator: (value) {
      if (value.isEmpty) {
        return 'Please enter some text';
      }
      return null;
  },
),
TextFormField(
  // The validator receives the text that the user has entered.
 decoration: const InputDecoration(
      icon: Icon(Icons.person),
      //hintText: 'How many members are there in the house?',
      labelText: 'No. of Females *',
  ),
  validator: (value) {
      if (value.isEmpty) {
        return 'Please enter some text';
      }
      return null;
  },
),
TextFormField(
  // The validator receives the text that the user has entered.
 decoration: const InputDecoration(
      icon: Icon(Icons.person),
      //hintText: 'How many members are there in the house?',
      labelText: 'Age',
  ),
  validator: (value) {
      if (value.isEmpty) {
        return 'Please enter some text';
      }
      return null;
  },
),
for(int i =0; i<3; i++)
  TextFormField(
  // The validator receives the text that the user has entered.
 decoration: InputDecoration(
      icon: Icon(Icons.person),
      //hintText: 'How many members are there in the house?',
      labelText: "Age of: ${i+1}",
  ),
  validator: (value) {
      if (value.isEmpty) {
        return 'Please enter some text';
      }
      return null;
  },
),
TextFormField(
  // The validator receives the text that the user has entered.
 decoration: const InputDecoration(
      icon: Icon(Icons.person),
      hintText: 'DD/MM/YYYY',
      labelText: 'Date of periodic cycle *',
  ),
  validator: (value) {
      if (value.isEmpty) {
        return 'Please enter some text';
      }
      return null;
  },
),

          ElevatedButton(
  onPressed: () {
      // Validate returns true if the form is valid, otherwise false.
      if (_formKey.currentState.validate()) {
        // If the form is valid, display a snackbar. In the real world,
        // you'd often call a server or save the information in a database.

        Scaffold
            .of(context)
            .showSnackBar(SnackBar(content: Text('Processing Data')));
      }
  },
  child: Text('Submit'),
),

          ]
       )
      ),
    );
  }
}




