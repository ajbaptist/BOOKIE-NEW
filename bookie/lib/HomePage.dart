import 'package:bookie/ProductPage.dart';
import 'package:bookie/models/Product.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  String? email;
  String? name = 'JOHN BAPTIST';

  HomePage({this.email, this.name});

  List bannerAdSlider = [
    "assets/banner1.png",
    "assets/banner2.png",
    "assets/banner3.jpg",
    "assets/banner4.jpg",
    "assets/banner5.png",
    "assets/banner6.png",
  ];

  List<Product> products = [
    Product(
        image:
            "https://technicalpublications.org/content/images/thumbs/0003787_sem-i_600.jpeg",
        description:
            "Problem Solving & Python Programming for BE Anna University R17 CBCS (I-COMMON - GE8151) Mrs. A. A. Puntambekar, J. Jayalakshmi ISBN 9789333216616",
        price: "195",
        productName: "Problem Solving & Python Programming"),
    Product(
        image:
            "https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/ahmed.jpg",
        description:
            "New web applications require engaging user-friendly interfaces   and the cooler, the better. With Flex 3, web developers at any skill level can create high-quality, effective, and interactive Rich Internet Applications (RIAs) quickly and easily. Flex removes the complexity barrier from RIA development by offering sophisticated tools and a straightforward programming language so you can focus on what you want to do instead of how to do it. And now that the major components of Flex are free and open-source, the cost barrier is gone, as well!    Flex 3 in Action is an easy-to-follow, hands-on Flex tutorial. Chock-full of examples, this book goes beyond feature coverage and helps you put Flex to work in real quickly master the Flex API and learn to apply the techniques that make your Flex applications stand out from the crowd",
        price: "110",
        productName: "Flex 3 in Action"),
    Product(
        image:
            "https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/barrilleaux.jpg",
        description:
            "3D User Interfaces with Java 3D is a practical guide for providing next-generation applications with 3D user interfaces for manipulation of in-scene objects. Emphasis is on standalone and web-based business applications, such as for online sales and mass customization, but much of what this book offers has broad applicability to 3D user interfaces in other pursuits such as scientific visualization and gaming.  This book provides an extensive conceptual framework for 3D user interface techniques, and an in-depth introduction to user interface support in the Java 3D API, including such topics as picking, collision, and drag-and-drop. Many of the techniques are demonstrated in a Java 3D software framework included with the book, which also provides developers with many general-purpose building blocks for constructing their own user interfaces.    Applications and their use of 3D are approached realistically. The book is geared towards sophisticated user interfaces",
        price: "100",
        productName: "3D User Interfaces with Java 3D"),
    Product(
        image:
            "https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/banker.jpg",
        description:
            "Jaguar Development with PowerBuilder 7 is the definitive guide to distributed application development with PowerBuilder It is the only book dedicated to preparing PowerBuilder developers for Jaguar applications and has been approved by Sybase engineers and product specialists who build the tools described in the book.    Jaguar Development with PowerBuilder 7 focuses on getting you up to speed on Jaguar and PowerBuilder, and it is packed with code samples to guide you every step of the way. It covers each step involved in application development, from setting up the development environment to deploying a production application.    Even a PowerBuilder developer with no experience in distributed technologies or Jaguar CTS will learn what it takes to build an application. Jaguar Development with PowerBuilder 7 covers:    Developing Component-centric Applications  Building Jaguar CTS Components/Clients  CORBA  Adaptive SQL Anywhere  Adaptive Server Enterprise  and lots more",
        price: "100",
        productName: "Distributed Application Development"),
    Product(
        image:
            "https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/almiray.jpg",
        description:
            "Griffon in Action is a comprehensive tutorial written for Java developers who want a more productive approach to UI development.",
        price: "100",
        productName: "Griffon in Action"),
    Product(
        image:
            "https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/armstrong.jpg",
        description:
            "Rails is a fantastic tool for web application development, but its Ajax-driven interfaces stop short of the richness you gain with a tool like Adobe Flex. Simply put, Flex is the most productive way to build the UI of rich Internet applications, and Rails is the most productive way to rapidly build a database-backed CRUD application. Together, they're an amazing combination.    Flexible Rails is a book about how to use Ruby on Rails and Adobe Flex to build next-generation rich Internet applications (RIAs). The book takes you to the leading edge of RIA development, presenting examples in Flex 3 and Rails 2.    This book is not an exhaustive Ruby on Rails tutorial, nor a Flex reference manual. (Adobe ships over 3000 pages of PDF reference documentation with Flex.) Instead, it's an extensive tutorial, developed iteratively, how to build an RIA using Flex and Rails together. You learn both the specific techniques you need to use Flex and Rails together as well as the development practices that make the combination especially powerful",
        price: "100",
        productName: "Flexible Rails"),
    Product(
        image:
            "https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/bibeault.jpg",
        description:
            "A really good web development framework anticipates your needs. jQuery does more   it practically reads your mind. Developers fall in love with this JavaScript library the moment they see 20 lines of code reduced to three. jQuery is concise and readable",
        price: "100",
        productName: "jQuery in Action"),
    Product(
        image:
            "https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/bochicchio.jpg",
        description:
            "Using Flex, you can create high-quality, effective, and interactive Rich Internet Applications (RIAs) quickly and easily. Flex removes the complexity barrier from RIA development by offering sophisticated tools and a straightforward programming language so you can focus on what you want to do instead of how to do it. And the new features added in Flex 4 give you an even wider range of options!    Flex 4 in Action is an easy-to-follow, hands-on Flex tutorial that goes beyond feature coverage and helps you put Flex to work in real day-to-day tasks. You'll quickly master the Flex API and learn to apply the techniques that make your Flex applications stand out from the crowd.    The expert authors of Flex 4 in Action have one goal-to help you get down to business with Flex. Fast. Flex 4 in Action filters out the noise and dives into the core topics you need every day. Using numerous easy-to-understand examples, Flex 4 in Action gives you a strong foundation that you can build on as the complexity of your projects increases",
        price: "100",
        productName: "Flex 4 in Action"),
    Product(
        image:
            "https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/alag.jpg",
        description:
            "There\'s a great deal of wisdom in a crowd, but how do you listen to a thousand people talking at once  Identifying the wants, needs, and knowledge of internet users can be like listening to a mob.    In the Web 2.0 era, leveraging the collective power of user contributions, interactions, and feedback is the key to market dominance. A new category of powerful programming techniques lets you discover the patterns, inter-relationships, and individual profiles   the collective intelligence   locked in the data people leave behind as they surf websites, post blogs, and interact with other users.    Collective Intelligence in Action is a hands-on guidebook for implementing collective-intelligence concepts using Java. It is the first Java-based book to emphasize the underlying algorithms and technical implementation of vital data gathering and mining techniques like analyzing trends, discovering relationships, and making predictions. It provides a pragmatic approach to personalization by combining content-based analysis with collaborative approaches",
        price: "100",
        productName: "Collective Intelligence in Action"),
    Product(
        image:
            "https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/allen.jpg",
        description:
            "Zend Framework in Action is a comprehensive tutorial that shows how to use the Zend Framework to create web-based applications and web services. This book takes you on an over-the-shoulder tour of the components of the Zend Framework as you build a high quality, real-world web application.",
        price: "100",
        productName: "Zend Framework in Action"),
    Product(
        image:
            "https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/alag.jpg",
        description:
            "There\'s a great deal of wisdom in a crowd, but how do you listen to a thousand people talking at once  Identifying the wants, needs, and knowledge of internet users can be like listening to a mob.    In the Web 2.0 era, leveraging the collective power of user contributions, interactions, and feedback is the key to market dominance. A new category of powerful programming techniques lets you discover the patterns, inter-relationships, and individual profiles   the collective intelligence   locked in the data people leave behind as they surf websites, post blogs, and interact with other users.    Collective Intelligence in Action is a hands-on guidebook for implementing collective-intelligence concepts using Java. It is the first Java-based book to emphasize the underlying algorithms and technical implementation of vital data gathering and mining techniques like analyzing trends, discovering relationships, and making predictions. It provides a pragmatic approach to personalization by combining content-based analysis with collaborative approaches",
        price: "100",
        productName: "Collective Intelligence in Action"),
    Product(
        image:
            "https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/ahmed2.jpg"
                .toString(),
        description:
            "Using Flex, you can create high-quality, effective, and interactive Rich Internet Applications (RIAs) quickly and easily. Flex removes the complexity barrier from RIA development by offering sophisticated tools and a straightforward programming language so you can focus on what you want to do instead of how to do it. And the new features added in Flex 4 give you an even wider range of options!    Flex 4 in Action is an easy-to-follow, hands-on Flex tutorial that goes beyond feature coverage and helps you put Flex to work in real day-to-day tasks. You'll quickly master the Flex API and learn to apply the techniques that make your Flex applications stand out from the crowd.    The expert authors of Flex 4 in Action have one goal-to help you get down to business with Flex. Fast. Flex 4 in Action filters out the noise and dives into the core topics you need every day. Using numerous easy-to-understand examples, Flex 4 in Action gives you a strong foundation that you can build on as the complexity of your projects increases.",
        price: "100",
        productName: "Flex 4 in Action"),
  ];

  GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    return Scaffold(
      key: drawerKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "BOOKIE",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: () {
            drawerKey.currentState!.openDrawer();
          },
          icon: Icon(EvaIcons.menu2Outline),
        ),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(EvaIcons.search)),
          IconButton(
            onPressed: () {},
            icon: Icon(EvaIcons.shoppingBagOutline),
          ),
        ],
      ),
      drawerEdgeDragWidth: 0,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(16),
              ),
              accountEmail: Text(
                email!,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              accountName: Text(
                name!,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child: Image(
                  image: NetworkImage(
                      "https://images.pexels.com/photos/1065084/pexels-photo-1065084.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"),
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text("Home"),
              leading: Icon(EvaIcons.homeOutline),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text("Account"),
              leading: Icon(EvaIcons.personOutline),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text("Most Selling Books"),
              leading: Icon(EvaIcons.bookOpen),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text("Most Rated Shops"),
              leading: Icon(EvaIcons.shoppingBag),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: AspectRatio(
                  aspectRatio: 16 / 5,
                  child: Image.asset(
                    "assets/banner8.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Recently Added Shops",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal),
                ),
              ),

              SizedBox(
                height: 30,
              ),
              // banner ad slider

              CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 16 / 7,
                  autoPlay: true,
                ),
                items: bannerAdSlider.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image(
                            image: AssetImage(i),
                            fit: BoxFit.fill,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),

              // banner ad slider

              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Recommended For You",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              GridView.count(
                physics: ClampingScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                shrinkWrap: true,
                childAspectRatio: 1 / 1.30,
                children: products.map((product) {
                  return Stack(
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            AspectRatio(
                              aspectRatio: 1 / 0.80,
                              child: Image(
                                image: NetworkImage(product.image),
                              ),
                            ),
                            Text(
                              product.productName,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "₹${product.price}",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProductPage(
                                    product: product,
                                  ),
                                ));
                          },
                        ),
                      )
                    ],
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
