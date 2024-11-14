import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("My_Profile"),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.keyboard_backspace_rounded))
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [ Row(
                          children: [
                          SizedBox(width: 130,),
                          SizedBox(
                          height: 115,width: 115,
                          child: Stack(
                          fit: StackFit.expand,
                          children: [
                          CircleAvatar(
                          backgroundImage: AssetImage("assets/profile.png"),
                          ),
                          ],
                          ),
                          ),
                          ],
                          ),

            const SizedBox(
            height: 30,
            ),
            Text('Ghina_Alkaseer',
            style: const TextStyle(
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
            fontSize: 25,
            ),),
            const SizedBox(
            height: 40,
            ),
            Padding(
            padding: const EdgeInsets.only(top: 8,bottom: 8),
            child: Column(
            children: [
              Container(
                height: 50,
                width: 400,
                child: Row(
                  children: [
                    const Icon(Icons.maps_home_work_outlined),
                    const SizedBox(width: 10),
                    Text("My college:",
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
                child: Text("IT_Engineering",
                  style: TextStyle(
                    fontSize: 16,
                      color: Colors.black,
                  ),),
              ),
            Divider(),
              Container(
                height: 50,
                width: 400,
                child: Row(
                  children: [
                    const Icon(Icons.link_outlined),
                    const SizedBox(width: 10),
                    Text("My Specialist :",
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
                child: Text("Software_Engineering",
                  style: TextStyle(
                    fontSize: 16,
                  ),

                ),
              ),
            Divider(),
            Container(
            height: 50,
            width: 400,
            child: Row(
            children: [
            const Icon(Icons.account_box_outlined),
            const SizedBox(width: 10),
            Text("My Bio :",
            style: const TextStyle(
                fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold
            ),),
            ],
            ),
            ),
            const SizedBox(
            height: 20,
            child: Text("اجعل من نفسك شيء يصعب تقليده",
            style: TextStyle(
                fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold
            ),),
            ),
            const Divider(),
            Container(
            height: 50,
            width: 400,
            child: Row(
            children: [
            const Icon(Icons.link_outlined),
            const SizedBox(width: 10),
            Text("FacaBook Link :",
            style: const TextStyle(
                fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold
            ),),
            ],
            ),
            ),
            const SizedBox(
            height: 20,
            child: Text("www.facebook.com",
            style: TextStyle(
              fontSize: 16
            ),),
            ),
            
            
                  
            ],
            ),
            ),
            ],
            ),
          ),
          ),
      
          ),
    );
        }

        }

