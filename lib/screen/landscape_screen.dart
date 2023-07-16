import 'package:flutter/material.dart';

class LandscapeScreen extends StatelessWidget {
  const LandscapeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.black,
            radius: screenSize.width / 6,
            child: CircleAvatar(
              radius: (screenSize.width / 6) - 2,
              backgroundImage: const NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcvDjwfPhEERU9oVktkat19qgw7Q-A21XXvw&usqp=CAU'),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SingleChildScrollView(
            child: SizedBox(
              width: (screenSize.width) - (screenSize.width / 3) - 26,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'John Doe',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 9),
                  const Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  GridView.count(
                    physics: const ScrollPhysics(),
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    children: [
                      for (int i = 1; i <= 10; i++)
                        Image.network(
                          'https://play-lh.googleusercontent.com/wIf3HtczQDjHzHuu7vezhqNs0zXAG85F7VmP7nhsTxO3OHegrVXlqIh_DWBYi86FTIGk',
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}