import 'package:flutter/material.dart';

class DasrOlti extends StatefulWidget {
  @override
  State<DasrOlti> createState() => _DasrOltiState();
}

class _DasrOltiState extends State<DasrOlti> {
  List lst = [];
  int jami = 0;
  int rang = 1;
  bool rang1 = true;
  int qizil = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: rang1 == true
        ?Colors.amber
        :Colors.red,
        elevation: 0,
        title: const Text(
          "Kalkulator",
          style: TextStyle(
            color: Colors.black,
            fontSize: 27,
          ),
        ),
        actions: [
          jami.isEven
              ? IconButton(
                  onPressed: () {
                    rang = 1;
                    jami = 1;
                    setState(() {});
                  },
                  icon: Icon(Icons.color_lens),
                )
              : IconButton(
                  onPressed: () {
                    rang = 0;
                    jami = 2;
                    setState(() {});
                  },
                  icon: Icon(Icons.color_lens, color: Colors.black),
                ),
          qizil.isEven
              ? IconButton(
                  onPressed: () {
                    rang1 = false;
                    qizil = 1;
                    setState(() {});
                  },
                  icon: Icon(Icons.color_lens,color:Colors.red),
                )
              : IconButton(
                  onPressed: () {
                    rang1 = true;
                    qizil = 2;
                    setState(() {});
                  },
                  icon: Icon(Icons.color_lens, color: Colors.amber),
                )
        ],
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            height: 266,
            width: double.infinity,
            color: rang.isEven ? Colors.black : Colors.white,
            child: Text(
              lst.join(),
              style: const TextStyle(
                color: Colors.amber,
                fontSize: 50,
              ),
            ),
          ),
          Container(
            height: 510,
            width: double.infinity,
            color: rang.isEven ? Colors.black : Colors.white,
            child: Row(
              children: [
                const SizedBox(
                  height: 8,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (lst.last != 'x' && lst.last != '%' && lst.last !='+' && lst.last !='-' && lst.last !='*' && lst.last !='/') {
                          lst.add('x');
                        }
                        setState(() {});
                      },
                      child: const Text(
                        "x2",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[500],
                        shape: CircleBorder(),
                        minimumSize: Size(102, 91),
                        shadowColor: Colors.black54,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        lst.add('7');
                        setState(() {});
                      },
                      child: const Text(
                        "7",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[800],
                        shape: CircleBorder(),
                        minimumSize: Size(102, 91),
                        shadowColor: Colors.black54,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        lst.add('4');
                        setState(() {});
                      },
                      child: const Text(
                        "4",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[800],
                        shape: CircleBorder(),
                        minimumSize: Size(102, 91),
                        shadowColor: Colors.black54,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        lst.add('1');
                        setState(() {});
                      },
                      child: const Text(
                        "1",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[800],
                        shape: CircleBorder(),
                        minimumSize: Size(102, 91),
                        shadowColor: Colors.black54,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        lst.add('00');
                        setState(() {});
                      },
                      child: const Text(
                        "00",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[800],
                        shape: CircleBorder(),
                        minimumSize: Size(102, 91),
                        shadowColor: Colors.black54,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (lst.last != 'x' && lst.last != '%' && lst.last !='+' && lst.last !='-' && lst.last !='*' && lst.last !='/') {
                          lst.add('%');
                        }
                        setState(() {});
                      },
                      child: const Text(
                        "%",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[500],
                        shape: CircleBorder(),
                        minimumSize: Size(102, 91),
                        shadowColor: Colors.black54,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        lst.add('8');
                        setState(() {});
                      },
                      child: const Text(
                        "8",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[800],
                        shape: CircleBorder(),
                        minimumSize: Size(102, 91),
                        shadowColor: Colors.black54,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        lst.add('5');
                        setState(() {});
                      },
                      child: const Text(
                        "5",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[800],
                        shape: CircleBorder(),
                        minimumSize: Size(102, 91),
                        shadowColor: Colors.black54,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        lst.add('2');
                        setState(() {});
                      },
                      child: const Text(
                        "2",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[800],
                        shape: CircleBorder(),
                        minimumSize: Size(102, 91),
                        shadowColor: Colors.black54,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        lst.add('0');
                        setState(() {});
                      },
                      child: const Text(
                        "0",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[800],
                        shape: CircleBorder(),
                        minimumSize: Size(102, 91),
                        shadowColor: Colors.black54,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        lst.clear();
                        setState(() {});
                      },
                      child: const Text(
                        "Ca",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[500],
                        shape: CircleBorder(),
                        minimumSize: Size(102, 91),
                        shadowColor: Colors.black54,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        lst.add('9');
                        setState(() {});
                      },
                      child: const Text(
                        "9",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[800],
                        shape: CircleBorder(),
                        minimumSize: Size(102, 91),
                        shadowColor: Colors.black54,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        lst.add('6');
                        setState(() {});
                      },
                      child: const Text(
                        "6",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[800],
                        shape: CircleBorder(),
                        minimumSize: Size(102, 91),
                        shadowColor: Colors.black54,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        lst.add('3');
                        setState(() {});
                      },
                      child: const Text(
                        "3",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[800],
                        shape: CircleBorder(),
                        minimumSize: Size(102, 91),
                        shadowColor: Colors.black54,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: korsat,
                      child: const Text(
                        "=",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: rang1 == true
                        ?Colors.amber
                        :Colors.red,
              
                        shape: CircleBorder(),
                        minimumSize: Size(102, 91),
                        shadowColor: Colors.black54,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        lst.removeLast();
                        setState(() {});
                      },
                      child: const Text(
                        "C",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: rang1 == true
                        ?Colors.amber
                        :Colors.red,
              
                        shape: CircleBorder(),
                        minimumSize: Size(102, 91),
                        shadowColor: Colors.black54,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (lst.last != 'x' && lst.last != '%' && lst.last !='+' && lst.last !='-' && lst.last !='*' && lst.last !='/') {
                          lst.add('+');
                        }
                        setState(() {});
                      },
                      child: const Text(
                        "+",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: rang1 == true
                        ?Colors.amber
                        :Colors.red,
              
                        shape: CircleBorder(),
                        minimumSize: Size(102, 91),
                        shadowColor: Colors.black54,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (lst.last != 'x' && lst.last != '%' && lst.last !='+' && lst.last !='-' && lst.last !='*' && lst.last !='/') {
                          lst.add('-');
                        }
                        setState(() {});
                      },
                      child: const Text(
                        "-",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: rang1 == true
                        ?Colors.amber
                        :Colors.red,
              
                        shape: CircleBorder(),
                        minimumSize: Size(102, 91),
                        shadowColor: Colors.black54,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (lst.last != 'x' && lst.last != '%' && lst.last !='+' && lst.last !='-' && lst.last !='*' && lst.last !='/') {
                          lst.add('*');
                        }
                        setState(() {});
                      },
                      child: const Text(
                        "*",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: rang1 == true
                        ?Colors.amber
                        :Colors.red,
              
                        shape: CircleBorder(),
                        minimumSize: Size(102, 91),
                        shadowColor: Colors.black54,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (lst.last != 'x' && lst.last != '%' && lst.last !='+' && lst.last !='-' && lst.last !='*' && lst.last !='/') {
                          lst.add('/');
                        }
                        setState(() {});
                      },
                      child: const Text(
                        "/",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: rang1 == true
                        ?Colors.amber
                        :Colors.red,
              
                        shape: CircleBorder(),
                        minimumSize: Size(102, 91),
                        shadowColor: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  korsat() {
    for (var i = 0; i < lst.length; i++) {
      int f = 1;
      int f1 = 0;
      List jami1 = [];
      if (lst[i] == "+") {
        jami1 = lst.join().split("+").toList();
        lst.clear();
        lst.add(num.parse(jami1[0]) + num.parse(jami1[1]));
        setState(() {});
       
      } else if (lst[i] == "-") {
        jami1 = lst.join().split("-").toList();
        lst.clear();
        lst.add(num.parse(jami1[0]) - num.parse(jami1[1]));
        setState(() {});
      } else if (lst[i] == "*") {
        jami1 = lst.join().split("*").toList();
        lst.clear();
        lst.add(num.parse(jami1[0]) * num.parse(jami1[1]));
        setState(() {});
      } else if (lst[i] == "/") {
        jami1 = lst.join().split("/").toList();
        lst.clear();
        lst.add(num.parse(jami1[0]) / num.parse(jami1[1]));
        setState(() {});
      } else if (lst[i] == "%") {
        jami1 = lst.join().split("%").toList();
        lst.clear();
        lst.add((num.parse(jami1[0])/100)*num.parse(jami1[1]));
        setState(() {});
      } else if (lst[i] == "x") {
        jami1 = lst.join().split("x").toList();
        lst.clear();
        lst.add(num.parse(jami1[0]) * num.parse(jami1[0]));
        setState(() {});
      }
    }
  }

 
}
