import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewsDetailsPage extends StatelessWidget {
  const NewsDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: const Color(0xFFFF8086),
        child: SvgPicture.asset('assets/icons/yoqdi.svg'),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset('assets/image/image_4.png', fit: BoxFit.fill),
              Positioned(
                left: 15,
                top: 40,
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: SvgPicture.asset('assets/icons/arrow_back.svg')
                ),
              ),
            ],
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Expanded(
                child: Container(
                  width: 375,
                  height: 406,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
                    color: Colors.white
                  ),
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    padding: const EdgeInsets.only(left: 15, top: 88, right: 15),
                    children: const [
                      Expanded(
                        child: Text('''LONDON — Cryptocurrencies “have no intrinsic value” and people who invest in them should be prepared to lose all their money, Bank of England Governor Andrew Bailey said.
                          
Digital currencies like bitcoin, ether and even dogecoin have been on a tear this year, reminding some investors of the 2017 crypto bubble in which bitcoin blasted toward 20,000, only to sink as low as 3,122 a year later.
                          
Asked at a press conference Thursday about the rising value of cryptocurrencies, Bailey said: “They have no intrinsic value. That doesn’t mean to say people don’t put value on them, because they can have extrinsic value. But they have no intrinsic value.”
                          
“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”
                          
Bailey’s comments echoed a similar warning from the U.K.’s Financial Conduct Authority.
                          
“Investing in cryptoassets, or investments and lending linked to them, generally involves taking very high risks with investors’ money,” the financial services watchdog said in January.
                          
“If consumers invest in these types of product, they should be prepared to lose all their money.”
                          
Bailey, who was formerly the chief executive of the FCA, has long been a skeptic of crypto. In 2017, he warned: “If you want to invest in bitcoin, be prepared to lose all your money.”''',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFF2E0505)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 350,
                left: 32,
                right: 32,
                child: Container(
                  width: 311,
                  height: 141,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    gradient: LinearGradient(
                      colors: [
                        Colors.grey,
                        Color.fromARGB(255, 255, 251, 251),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                    ),
                  ),        
                  child: const Padding(
                    padding: EdgeInsets.only(left: 24, top: 16, right: 24, bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Sunday, 9 May 2021', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Color(0xFF2E0505))),
                        SizedBox(height: 8),
                        Text('Crypto investors should be prepared to lose all their money, BOE governor says', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xFF2E0505))),
                        SizedBox(height: 8),
                        Text('Sunday, 9 May 2021', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w800, color: Color(0xFF2E0505))),
                      ],
                    ),
                  ),        
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}