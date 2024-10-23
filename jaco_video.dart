import 'package:flutter/material.dart';

class JacoVideo extends StatefulWidget {
  const JacoVideo({super.key});

  @override
  State<JacoVideo> createState() => _JacoVideoState();
}

class _JacoVideoState extends State<JacoVideo> {
  @override
  Widget build(BuildContext context) {
    // Get device width and height
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: deviceWidth * 0.05,
            vertical: deviceHeight * 0.05,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  buildStatColumn('0', 'Following'),
                  SizedBox(width: deviceWidth * 0.12),

                  buildStatColumn('0', 'Followers'),
                  SizedBox(width: deviceWidth * 0.12),

                  buildStatColumn('0', 'LIVEs'),

                ],
              ),
              SizedBox(height: deviceHeight * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildIconTextButton(
                    icon: Icons.account_balance_wallet_outlined,
                    text: 'Wallet',
                    onPressed: () {
                      print('Wallet');
                    },
                  ),
                  buildIconTextButton(
                    icon: Icons.monetization_on_outlined,
                    text: 'Revenue',
                    onPressed: () {
                      print('Revenue');
                    },
                  ),
                  Container(),
                ],
              ),
              SizedBox(height: deviceHeight * 0.02),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                        const Color.fromARGB(194, 225, 225, 225),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Edit Profile',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: deviceWidth * 0.02),
                  buildSmallIconButton(
                    icon: Icons.mobile_screen_share,
                    onPressed: () {},
                  ),
                  SizedBox(width: deviceWidth * 0.02),
                  buildSmallIconButton(
                    icon: Icons.person_add_alt,
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: deviceHeight * 0.02),
              const TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: Colors.transparent,
                tabs: [
                  Tab(text: 'Videos'),
                  Tab(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Liked'),
                        Icon(Icons.visibility_off_outlined,size: 15,),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.video_library_outlined,
                            size: 50,
                            color: Colors.grey,
                          ),
                          SizedBox(height: deviceHeight * 0.02),
                          const Text(
                            'No Videos Yet',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: deviceHeight * 0.02),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              backgroundColor: Colors.purple,
                            ),
                            child: const Text(
                              'Post your first JACO video',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Center(child: Text('No Results')),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStatColumn(String number, String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          number,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget buildIconTextButton({
    required IconData icon,
    required String text,
    required VoidCallback onPressed,
  }) {
    return Row(
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: const Color.fromARGB(194, 225, 225, 225),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(icon, color: Colors.black, size: 20),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.02),
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget buildSmallIconButton({
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        color: const Color.fromARGB(194, 225, 225, 225),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(5),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: Colors.black, size: 18),
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
      ),
    );
  }
}
