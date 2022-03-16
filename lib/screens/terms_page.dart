import 'package:flutter/material.dart';

class TermsPage extends StatelessWidget {
  const TermsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Terms & Conditions',
          style: TextStyle(color: Colors.black),
        ),
        leading: const Icon(
          Icons.arrow_back_ios_sharp,
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Text(
                "Paragraph 1",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 15),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mattis quis venenatis, diam leo. Sed bibendum ac dui condimentum consequat tempus vel sit. Lectus sit tristique in nullam vitae sed feugiat. Aliquet diam elit mus viverra. Neque, molestie morbi cursus amet pellentesque aenean posuere nascetur. Eu risus id ultricies est. Ac, faucibus pellentesque ullamcorper amet diam varius interdum.",
                style: TextStyle(color: Colors.black,fontSize: 15),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Text(
                "Paragraph 2",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 15),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Sit in vitae semper egestas sed posuere tellus nisl diam. Ipsum, nisl aenean fusce a, ut cras varius et. Enim egestas tempus velit molestie odio in aliquet. Orci gravida ac faucibus et eu phasellus elit, tellus. Dictum lacinia massa in amet elit. Felis magna et dis adipiscing porttitor sed. Fringilla ante lacus fermentum, ultricies volutpat neque, aliquet. Cras leo, porttitor tellus mi in. Nec volutpat in sed consequat pharetra tristique pulvinar sit. Id commodo tristique tellus in fringilla scelerisque mauris. Mauris quam euismod sit viverra a dictumst arcu sed laoreet. Volutpat bibendum amet diam semper. Nunc tellus eu auctor tellus vivamus a. Euismod orci, ut consequat consectetur praesent quis euismod id.",
                style:
                    TextStyle( color: Colors.black,fontSize: 15),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Text(
                "Ornare quis arcu eget aliquet pretium. Viverra nulla fringilla eget nibh habitasse cras vestibulum amet. Dui luctus dictum leo vulputate tristique lacus. Facilisis facilisi ullamcorper et vitae. Diam molestie sit laoreet lacinia ultrices. Convallis et ipsum quis consectetur sed. Quisque libero lectus quam in leo tincidunt. Venenatis id sodales pellentesque aliquet nibh egestas suspendisse nibh. Hendrerit non mauris, magna malesuada venenatis, eu. Enim, sed metus porttitor amet tortor neque sed.",
                style: TextStyle(color: Colors.black,fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
