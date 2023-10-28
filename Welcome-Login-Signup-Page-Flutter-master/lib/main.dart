import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/components/login_screen_top_image.dart';
import 'package:flutter_auth/Screens/Signup/components/signup_form.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_auth/constants.dart';

void main() {
  runApp(const Dashboard());
}

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Septiana Zuhro',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,

        
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: kPrimaryColor,
            shape: const StadiumBorder(),
            minimumSize: const Size(double.infinity, 56),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: kPrimaryLightColor,
          iconColor: kPrimaryColor,
          prefixIconColor: kPrimaryColor,
          contentPadding: EdgeInsets.symmetric(
            horizontal: defaultPadding,
            vertical: defaultPadding,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      home: const WelcomeScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                    title: Text('Hello Septiana!', style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: Colors.white,
                    )),
                    subtitle: Text('Good Morning', style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      color: Colors.white54,
                    )),
                    trailing: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/user2.png'),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),

            SizedBox(height: 40,),
            InkWell(
              onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      
                      builder: (context) => ProfileScreen(),
                      
                    ));

              },
              child: Container(alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal:15),
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff475269),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff475269).withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 1,

                  )
                ]
              ),

              child: Text(
                "Profile",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
              
              ),
            ),
            Container(
              color: Theme.of(context).primaryColor,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(200),
                  ),
                ),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 40,
                  mainAxisSpacing: 30,
                  children: [
                    
                    itemDashboard('Audience', Icons.play_arrow, Colors.purple),
                    itemDashboard('Comments', Icons.chat, Colors.brown),
                    itemDashboard('Revenue', Icons.attach_money, Colors.indigo),
                    itemDashboard('Upload', Icons.file_upload, Colors.teal),
                    itemDashboard('About', Icons.info, Colors.blue),
                    itemDashboard('Contact', Icons.phone, Colors.pinkAccent),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget itemDashboard(String title, IconData iconData, Color background) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Theme.of(context).primaryColor.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: background,
              shape: BoxShape.circle,
            ),
            child: Icon(iconData, color: Colors.white),
          ),
          const SizedBox(height: 8),
          Text(title.toUpperCase(), style: Theme.of(context).textTheme.subtitle1),
        ],
      ),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const ProfileScreen(),
    );
  }

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/user2.png'),
            ),
            const SizedBox(height: 20),
            itemProfile('Name', 'Septiana Zuhro', Icons.person),
            const SizedBox(height: 10),
            itemProfile('NPM', '21670006', Icons.numbers),
            const SizedBox(height: 10),
            itemProfile('Kelas', '5A Informatika', Icons.school_rounded),
            const SizedBox(height: 10),
            itemProfile('Email', 'septianazuhro@gmail.com', Icons.mail),
            const SizedBox(
              height: 20,
            ),
            
          ],
        ),
      ),
    );
  }

  Widget itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 241, 239, 239),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Colors.indigo.withOpacity(.20),
            spreadRadius: 20,
            blurRadius: 10,
          ),
        ],
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
      ),
    );
  }
}
