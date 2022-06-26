import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Test(),
      debugShowCheckedModeBanner: false,
    ));

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF0f1923),
        body:SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 6,
                  child: SafeArea(
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: NetworkImage(
                                  'https://scontent.fluh2-1.fna.fbcdn.net/v/t1.6435-9/87142187_213455970056218_2898787493811847168_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=174925&_nc_ohc=U30Hpjy751cAX_k7OrJ&_nc_ht=scontent.fluh2-1.fna&oh=00_AT-4wMfV2nnUPdBfC6THcTogxBe3uxMrlWYLXlXuIdhy4Q&oe=62DE0CC7'),
                            ),
                          ),
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                'MAPS',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Valorant1'),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: NetworkImage(
                                  'https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt0c118364c6320f60/62a289d3891af05acaff06b1/Pearl_Gallery_01.jpg?auto=webp&width=915')),
                        ),
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'PEARL',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Valorant1'),
                            )),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: NetworkImage(
                                  'https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt1a720126e3713bba/6131bf518e16ab655b34901a/Fracture_Screenshot-8.jpg?auto=webp&width=915')),
                        ),
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'FRACTURE',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Valorant1'),
                            )),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: NetworkImage(
                                  'https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/bltba64f41bce11904b/607f9e3bc661f15b3da77f85/breeze_1.jpg?auto=webp&width=915')),
                        ),
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'BREEZE',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Valorant1'),
                            )),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: NetworkImage(
                                  'https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt9ef7b41910a14118/5f80debff6c586323f8b17a3/icebox_1.jpg?auto=webp&width=915')),
                        ),
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'ICEBOX',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Valorant1'),
                            )),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: NetworkImage(
                                  'https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt7df0b99a582cc5aa/5eabe987b8a6356e4ddc0ca4/haven1.jpg?auto=webp&width=915')),
                        ),
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'HEAVEN',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Valorant1'),
                            )),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: NetworkImage(
                                  'https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt643d33e2defb855c/5eabe9fe248a28605479c547/split1.jpg?auto=webp&width=915')),
                        ),
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'SPLIT',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Valorant1'),
                            )),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: NetworkImage(
                                  'https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt930666d9ab927326/5eabe9c45751b2150e57a42c/ascent1.jpg?auto=webp&width=915')),
                        ),
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'ASCENT',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Valorant1'),
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
        ),
        ),

    );
  }
}
