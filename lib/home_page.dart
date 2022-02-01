import 'package:flutter/material.dart';

import 'models.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool icon = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 50,
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset.zero,
                      blurRadius: 1,
                      spreadRadius: 0.5,
                      blurStyle: BlurStyle.outer),
                ]),
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                hintText: "All restaurants",
                border: InputBorder.none,
                hintStyle: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.mic),
                ),
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.wifi,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
        title: const Text("Friently eats"),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.restaurant),
        ),
      ),
      body: ListView.builder(
        itemCount: Elems.elems.length,
          itemBuilder: (context, index) => buildContainer(Elems.elems[index], index)),
    );
  }

  Card buildContainer(Elems e, index) => Card(
    shadowColor: Colors.grey,
    elevation: 5,
    child: Container(
      height: 365,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 15,right: 15,bottom: 5, top: 8),
      child: Column(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: AssetImage(Elems.elems[index].image),
                fit: BoxFit.cover
              )
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(e.name,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    Text(e.prise,style: TextStyle(fontSize: 17,),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){
                      setState(() {
                        icon = !icon;
                      });
                    }, icon: icon ? Icon(Icons.star_border_outlined,color: Colors.amber,) : Icon(Icons.star,color: Colors.amber,)),
                    IconButton(onPressed: (){
                      setState(() {
                        icon = !icon;
                      });
                    }, icon: icon ? Icon(Icons.star_border_outlined,color: Colors.amber,) : Icon(Icons.star,color: Colors.amber,)),
                    IconButton(onPressed: (){
                      setState(() {
                        icon = !icon;
                      });
                    }, icon: icon ? Icon(Icons.star_border_outlined,color: Colors.amber,) : Icon(Icons.star,color: Colors.amber,)),
                    IconButton(onPressed: (){
                      setState(() {
                        icon = !icon;
                      });
                    }, icon: icon ? Icon(Icons.star_border_outlined,color: Colors.amber,) : Icon(Icons.star,color: Colors.amber,)),
                    IconButton(onPressed: (){
                      setState(() {
                        icon = !icon;
                      });
                    }, icon: icon ? Icon(Icons.star_border_outlined,color: Colors.amber,) : Icon(Icons.star,color: Colors.amber,)),
                  ],
                ),
                Row(
                  children: [
                    Text(e.adress,style: TextStyle(fontSize: 15,color: Colors.grey),),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 4,
                      width: 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade500
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(e.adress,style: TextStyle(fontSize: 15,color: Colors.grey),),
                  ],
                ),
              ]),
    )
        ],
      ),
    ),
  );
}
