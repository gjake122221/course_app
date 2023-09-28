import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../appstate/my_appstate.dart';

class NewPage extends StatelessWidget {
  const NewPage({
    super.key,
    required this.pagetitle,
    required this.pageimg,
    required this.titleContent,
    required this.textContent,
  });
  final String pagetitle;
  final String pageimg;
  final String titleContent;
  final String textContent;
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    return SingleChildScrollView(
      child: Column(
        children: [
          Card(
            color: Theme.of(context).colorScheme.onPrimary,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  scale: 1,
                  image: AssetImage(pageimg),
                  alignment: Alignment.centerRight,
                  fit: BoxFit.none,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: ListTile(
                  hoverColor: Theme.of(context).hoverColor,
                  leading: Icon(Icons.arrow_circle_left_outlined),
                  title: Text(
                    pagetitle,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    appState.cardtitle(-1);
                  },
                ),
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: ListTile(
                title: Text(titleContent),
                subtitle: Text(textContent),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

var title = 'Introduction';
var page0TextContent =
    'A mobile application, commonly referred to as a mobile app, is a software program or application designed to run on mobile devices such as smartphones and tablets. These applications are typically developed for specific operating systems, such as iOS for Apple devices or Android for a wide range of manufacturers. Mobile apps can serve a wide variety of purposes and functions, catering to the diverse needs and interests of mobile device users.';
var page1TextContent =
    'Web app development is the process of creating software applications that run on web browsers. These applications are accessible over the internet and can be used on a variety of devices, including desktop computers, laptops, tablets, and smartphones. Web app development is a crucial part of modern software development, enabling businesses and individuals to provide services, conduct transactions, and deliver content to a global audience through web browsers.';
var page2TextContent =
    'Data management refers to the process of collecting, storing, organizing, and maintaining data in a structured and secure manner to ensure its accessibility, reliability, and usability for various purposes. Effective data management is crucial for businesses, organizations, and individuals to make informed decisions, achieve operational efficiency, and maintain data integrity.';
var page3TextContent =
    'Networking, in the context of computer technology, refers to the practice of connecting computers and other devices together to enable them to communicate and share resources. Networking plays a fundamental role in modern computing, enabling the exchange of data and information between devices and allowing access to the internet and other shared resources.';
var page4TextContent =
    'Object-Oriented Programming (OOP) is a popular and powerful programming paradigm that focuses on organizing code into reusable and self-contained objects, each representing a real-world entity or concept. OOP is widely used in software development for its ability to promote code modularity, maintainability, and reusability.';
var page5TextContent =
    'C programming is a widely used and influential programming language that was developed in the early 1970s at Bell Labs by Dennis Ritchie. It is a versatile and low-level programming language that has had a profound impact on the field of computer science and software development.';
var page6TextContent = 'Flutter is Google'
    's UI toolkit for building applications for mobile, web, and desktop from a single codebase. In this codelab, you will build the following Flutter application:The application generates cool-sounding names, such as "newstay", "lightstream", "mainbrake", or "graypine". The user can ask for the next name, favorite the current one, and review the list of favorited names on a separate page. The app is responsive to different screen sizes.';
var page7TextContent =
    'Digital visual arts refer to artistic creations and expressions that are produced using digital technology and tools. These artworks can encompass a wide range of styles, techniques, and mediums, including digital painting, digital photography, computer-generated graphics, 3D modeling and animation, digital collage, and more. Digital visual arts have gained significant prominence in contemporary art and have opened up new creative possibilities for artists.';

var page0 = NewPage(
  pagetitle: 'SP Elec 1B',
  pageimg: 'image/Ellipse 2.png',
  titleContent: title,
  textContent: page0TextContent,
);
var page1 = NewPage(
  pagetitle: 'Apps Dev',
  pageimg: 'image/Ellipse 1.png',
  titleContent: title,
  textContent: page1TextContent,
);
var page2 = NewPage(
  pagetitle: 'IM2',
  pageimg: 'image/Ellipse 3.png',
  titleContent: title,
  textContent: page2TextContent,
);
var page3 = NewPage(
  pagetitle: 'Net2',
  pageimg: 'image/Ellipse 4.png',
  titleContent: title,
  textContent: page3TextContent,
);
var page4 = NewPage(
  pagetitle: 'OOP',
  pageimg: 'image/Ellipse 1.png',
  titleContent: title,
  textContent: page4TextContent,
);
var page5 = NewPage(
  pagetitle: 'Programing',
  pageimg: 'image/Ellipse 3.png',
  titleContent: title,
  textContent: page5TextContent,
);
var page6 = NewPage(
  pagetitle: 'CodeLab',
  pageimg: 'image/Ellipse 2.png',
  titleContent: title,
  textContent: page6TextContent,
);
var page7 = NewPage(
  pagetitle: 'DVA',
  pageimg: 'image/Ellipse 4.png',
  titleContent: title,
  textContent: page7TextContent,
);
