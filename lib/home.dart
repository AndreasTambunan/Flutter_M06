import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  bool _status_switch = false;

  String dropval = "Bangun";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Column(
        children: [
          SwitchListTile(
            secondary: const Icon(Icons.show_chart),
            title: const Text("Kegitan sehari"),
            value: _status_switch,
            onChanged: (val) {
              setState(() {
                _status_switch = val;
              });
            },
          ),
          Container(
              margin: const EdgeInsets.only(top: 200),
              child: _status_switch
                  ? DropdownButton(
                      value: dropval,
                      onChanged: (String? val) {
                        setState(() {
                          dropval = val!;
                        });
                      },
                      items: const [
                        DropdownMenuItem(
                          value: "hobby",
                          child: Text("Hobby"),
                        ),
                        DropdownMenuItem(
                          value: "Makan",
                          child: Text("Makanan Favorit"),
                        ),
                        DropdownMenuItem(
                          value: "cita",
                          child: Text("Cita-cita"),
                        ),
                      ],
                    )
                  : null),
          if (_status_switch == true)
            if (dropval == "hobby")
              const DeskripsiWekap()
            else if (dropval == "Makan")
              const DeskripsiMakan()
            else if (dropval == "cita")
              const DeskripsiSleep()
        ],
      ),
    );
  }
}

class DeskripsiWekap extends StatelessWidget {
  const DeskripsiWekap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: const Text("Bermain Bola"),
    );
  }
}

class DeskripsiMakan extends StatelessWidget {
  const DeskripsiMakan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          const Text(
            "Nasi Goreng",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Text("Saya suka nasi Goreng karena Saya suka nasi Goreng")
        ],
      ),
    );
  }
}

class DeskripsiSleep extends StatelessWidget {
  const DeskripsiSleep({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: const Text("Programmer"),
    );
  }
}
