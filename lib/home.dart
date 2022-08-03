// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatelessWidget {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: Color(0xFF363567),
      drawer: Drawer(
          //drawer
          ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        
        centerTitle: true,
        title: Text(
          'Store Admin',
          style: TextStyle(
              fontWeight: FontWeight.w900, fontSize: 30, color: Colors.white60),
        ),
        actions: [
          IconButton(
              onPressed: () {
                //Notifications
              },
              icon: const Icon(Icons.notifications_none_outlined,
                  size: 30, color: Color.fromARGB(255, 136, 168, 244))),
        ],
      ),
      bottomNavigationBar: Container(
          height: MediaQuery.of(context).size.height * 0.13,
          width: double.infinity,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Color(0xFF373856),
      
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      // Today Sale
                    },
                    icon: const Icon(Icons.point_of_sale_outlined,
                        size: 30, color: Color.fromARGB(255, 136, 168, 244)),
                    tooltip: 'Today\'s Sale',
                  ),
                  Text('Sale',
                      style:
                          TextStyle(color: Color.fromARGB(255, 136, 168, 244))),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      // Today Sale
                    },
                    icon: const Icon(Icons.inventory_2_outlined,
                        size: 30, color: Color.fromARGB(255, 136, 168, 105)),
                    tooltip: 'Today\'s Stock-in',
                       ),
                       Text('Stock-in',style:
                          TextStyle(color: Color.fromARGB(255, 136, 168, 105))),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      // Today Sale
                    },
                    icon: const Icon(Icons.payments_outlined,
                        size: 30, color: Color.fromARGB(255, 218, 222, 136)),
                    tooltip: 'Today\'s Expenses',
                  ),
                  Text('Expense',style:
                          TextStyle(color: Color.fromARGB(255, 218, 222, 136))),

                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      // Today Sale
                    },
                    icon: const Icon(Icons.trending_up_outlined,
                        size: 30, color: Color.fromARGB(255, 236, 174, 174)),
                    tooltip: 'Today\'s Profit',
                  ),
                  Text('Profit',style:
                          TextStyle(color: Color.fromARGB(255, 236, 174, 174))),
                ],
              )
            ],
          )),
      body: SingleChildScrollView(
        
        child: Container(
          
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomLeft, colors: [
            Color.fromARGB(40, 95, 187, 139),
            Color.fromARGB(255, 101, 139, 179)
          ])),
          child: Column(
            
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Row(
                      children: [
                        Container(
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Online Mode',
                          style: TextStyle(
                              color: Color.fromARGB(255, 77, 67, 143),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 1, right: 10, top: 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Text(
                          'Current Shop',
                          style: TextStyle(
                              color: Colors.white54,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height:5),
                        GestureDetector(
                          onTap: () {
                            //  Get.to(ShopSelection());
                          },
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: Colors.blueGrey, width: 1)),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "shopname",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.grey,
                                )
                              ],
                            ),
                          ),
                        )
                      ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        children: [
                          InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0x9F3D416E),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.phonelink_setup_outlined,
                                      size: 40,
                                      color: Colors.blue.shade300,
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      'Stock',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.blue.shade300,
                                      ),
                                    ),
                                    Text(
                                      '  Set-Up',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.blue.shade300,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                              // link 1
                            },
                          ),
                          InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0x9F3D416E),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.manage_accounts_rounded,
                                      size: 50,
                                      color: Color.fromARGB(255, 127, 106, 203),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      'Stock-in',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color:
                                            Color.fromARGB(255, 127, 106, 203),
                                      ),
                                    ),
                                    Text(
                                      'Manager',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color:
                                            Color.fromARGB(255, 127, 106, 203),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                              // link 2
                            },
                          ),
                          InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0x9F3D416E),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.assignment_ind_rounded,
                                      size: 50,
                                      color: Colors.red.shade300,
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      'Sales',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.red.shade300,
                                      ),
                                    ),
                                    Text(
                                      'Manager',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.red.shade300,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                              // link 3
                            },
                          ),
                          InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0x9F3D416E),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.trending_up_outlined,
                                      size: 40,
                                      color: Colors.orange.shade300,
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      'Profits',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.orange.shade300,
                                      ),
                                    ),
                                    Text(
                                      ' & expenses',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.orange.shade300,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                              // link 4
                            },
                          ),
                          InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0x9F3D416E),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.request_quote_outlined,
                                      size: 40,
                                      color: Colors.pink.shade200,
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      'Cashflow',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.pink.shade200,
                                      ),
                                    ),
                                    Text(
                                      'Manager',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.pink.shade200,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                              // link 5
                            },
                          ),
                          InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0x9F3D416E),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.emoji_people_outlined,
                                      size: 40,
                                      color: Colors.green.shade300,
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      'Stock',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.green.shade300,
                                      ),
                                    ),
                                    Text(
                                      '  Set-Up',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.green.shade300,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                              // link 6
                            },
                          ),
                          InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0x9F3D416E),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.data_usage_outlined,
                                      size: 40,
                                      color: Colors.yellow.shade300,
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      'Usage',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.yellow.shade300,
                                      ),
                                    ),
                                    Text(
                                      'manager',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.yellow.shade300,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                              // link 1
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            //chat
          },
          backgroundColor: Color.fromARGB(255, 131, 107, 175),
          child: const Icon(Icons.whatsapp_outlined)),
    );
  }
}
