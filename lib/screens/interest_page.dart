import 'package:flutter/material.dart';

class InterestsPage extends StatefulWidget {
  const InterestsPage({Key? key}) : super(key: key);

  @override
  State<InterestsPage> createState() => _InterestsPageState();
}

class _InterestsPageState extends State<InterestsPage> {
  List<String> text = [
    "World News",
    "Politics",
    "Technology",
    "Science",
    "Business",
    "Entertainment",
    "Food"
  ];
  List<bool> bolist = List.generate(7, (i) => true);
  bool all = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Interests',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: const Text(
                "All",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Switch.adaptive(
                activeColor: Colors.black,
                value: all,
                onChanged: (v) {
                  setState(() {
                    all = !all;
                    for (int i = 0; i < bolist.length; i++) {
                      bolist[i] = all;
                    }
                  });
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: bolist.length,
                separatorBuilder: (_, __) => ListTile(
                  title: Text(text[__]),
                  trailing: Switch.adaptive(
                    activeColor: Colors.black,
                    value: bolist[__],
                    onChanged: (v) {
                      setState(() {
                        bolist[__] = !bolist[__];
                      });
                    },
                  ),
                ),
                itemBuilder: (_, __) => const Divider(),
              ),
            ),
            Expanded(child: Center(child: _buttomMethod))
          ],
        ),
      ),
    );
  }

  Widget get _buttomMethod {
    return SizedBox(
      height: 40,
      width: 150,
      child: ElevatedButton(
          child: const Text("Start"),
          style: ElevatedButton.styleFrom(
              primary: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          onPressed: () {}),
    );
  }
}
