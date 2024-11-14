import 'package:flutter/material.dart';
List  Goods=[
  {"GoodName": "Casucci",
    "description" : "very good bag for woman",
    "image": "assets/download.jpg",
  },

  {"GoodName": "Table",
    "description" : "very good table for woman",
    "image": "assets/tab.jpg",},

  {"GoodName": "Dell",
    "description" : "very good bag for woman",
    "image": "assets/dell.jpg",
  },

  {"GoodName": "Salamon",
    "description" : "very good bag for woman",
    "image": "assets/Sal.jpg",
  },
  {"GoodName": "Apple",
    "description" : "very good bag for woman",
    "image": "assets/app.jpg",
  },
  {"GoodName": "Pizza",
    "description" : "very good bag for woman",
    "image": "assets/zenjar.jpg",
  },
  {"GoodName": "ZadBook",
    "description" : "very good bag for woman",
    "image": "assets/zad.jpg",
  },
  {"GoodName": "Samsung",
    "description" : "very good bag for woman",
    "image": "assets/sams.jpg",
  },
  {"GoodName": "T-shirt",
    "description" : "very good bag for woman",
    "image": "assets/tsh1.jpg",
  },
  {"GoodName": "Zenger",
    "description" : "very good bag for woman",
    "image": "assets/zenjar.jpg",
  },
];
class DetailsPage extends StatefulWidget {
  String namegood;
  String description;
  String image;

  DetailsPage({
    Key? key,
    required this.namegood,
    required this.description,
    required this.image,
  }) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  void _showEditDialog() {

    String updatedName = widget.namegood;
    String updatedDescription = widget.description;
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Product'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Product Name'),
                onChanged: (value) {
                  updatedName = value;
                },
                controller: TextEditingController(text: widget.namegood),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Product Description'),
                onChanged: (value) {
                  updatedDescription = value;
                },
                controller: TextEditingController(text: widget.description),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  widget.namegood = updatedName;
                  widget.description = updatedDescription;
                });
                Navigator.pop(context);
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Details'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_backspace_rounded),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: _showEditDialog,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 115,
                width: 115,
                child: CircleAvatar(
                  backgroundImage: AssetImage(widget.image),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                widget.namegood,
                style: const TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                widget.description,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
