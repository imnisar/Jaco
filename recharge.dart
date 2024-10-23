import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RechargeUi extends StatefulWidget {
  const RechargeUi({super.key});

  @override
  State<RechargeUi> createState() => _RechargeUiState();
}

class _RechargeUiState extends State<RechargeUi> {
  int selectedIndex = -1;

  Widget buildContainer(int index, String coins, String value) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        width: 110,
        height: 55,
        decoration: BoxDecoration(
          border: Border.all(
            color: selectedIndex == index ? Colors.red : Colors.grey.shade400,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.monetization_on,
                  color: Colors.yellow,
                  size: 20,
                ),
                 Text(
                  coins,
                  style: const TextStyle(fontWeight: FontWeight.w900),
                ),
              ],
            ),
            const SizedBox(height: 2),
            Text(
              value,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 700.0),
            child: Center(
              child: SizedBox(
                width: 330,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {

                  },
                  child: const Text(
                    'Click Me',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  callBottomSheet(){
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
      ),
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return FractionallySizedBox(
          heightFactor: 0.6,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 130.0),
                        child: Text(
                          'Recharge',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15.0),
                        child: FaIcon(
                          FontAwesomeIcons.circleQuestion,
                          size: 18,
                        ),
                      ),
                    ],

                  ),
                ),

                Divider(
                  color: Colors.grey.shade400,
                  thickness: 1,
                  height: 20,

                ),
                const SizedBox(height: 10,),
                const Row(
                  children: [
                    Text('Balance: '),
                    Icon(
                      Icons.monetization_on,
                      color: Colors.yellow,
                      size: 20,
                    ),
                    SizedBox(width: 5),
                    Text(
                      '98',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Container(
                  width: 350,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 4.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Exchange',
                          style: TextStyle(fontSize: 12)),
                      SizedBox(height: 2),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'From LIVE rewards: \$0.00 ≈ £0.00 ( 0 )',
                            style: TextStyle(fontSize: 14),
                          ),
                          Padding(
                            padding:
                            EdgeInsets.only(bottom: 15.0),
                            child: Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.grey,
                                size: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    buildContainer(0, '5', '£0.09'),
                    buildContainer(1, '70', '£0.095'),
                    buildContainer(2, '350', '£4.79'),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    buildContainer(3, '700', '£9.55'),
                    buildContainer(4, '1400', '£19.09'),
                    buildContainer(5, '3500', '£47.69'),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    buildContainer(6, '7000', '£95.39'),
                    const SizedBox(width: 5),
                    buildContainer(7, '17500', '£238.49'),
                  ],
                ),
                const SizedBox(height: 60),
                SizedBox(
                  width: 330,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.pink,
                    ),
                    child: const Text(
                      'Recharge',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
