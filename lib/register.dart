import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var color1 = const Color(0xffaed2ec);
    var color2 = const Color(0xff3ea4ec);
    var color3 = const Color(0xff5db3ef);

    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 2.5,
          decoration: BoxDecoration(
            color: color1,
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
              Container(
                height: 200,
                child: Image.asset(
                  'asset/st.png',
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
          'Sign Up As A Patient',
          style: TextStyle(
            fontSize: 24,
            color: color3,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Form(
            child: Padding(
          padding: const EdgeInsets.only(right: 25, left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 3, left: 10),
                child: Text(
                  "Name",
                  style: TextStyle(color: color3, fontWeight: FontWeight.bold),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Name',
                  contentPadding:
                      EdgeInsets.only(top: 0, bottom: 0, left: 10, right: 10),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: color2, style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: color2, style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10)),
                ),
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 3, left: 10),
                child: Text(
                  "National ID",
                  style: TextStyle(color: color3, fontWeight: FontWeight.bold),
                ),
              ),
              TextFormField(
                  decoration: InputDecoration(
                      hintText: "National ID",
                      contentPadding: const EdgeInsets.only(
                          top: 0, bottom: 0, left: 10, right: 10),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: color2, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: color2, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(10))),
                  style: const TextStyle(
                    fontSize: 16,
                  )),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 3, left: 10),
                child: Text(
                  "Date Of Birth",
                  style: TextStyle(color: color3, fontWeight: FontWeight.bold),
                ),
              ),
              TextFormField(
                  controller: date,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            pickDate(context);
                          },
                          icon: Icon(
                            Icons.calendar_month_outlined,
                            color: color2,
                          )),
                      contentPadding: const EdgeInsets.only(
                          top: 0, bottom: 0, left: 10, right: 10),
                      hintText: "Date Of Birth",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: color2, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: color2, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(10))),
                  style: const TextStyle(
                    fontSize: 16,
                  )),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 3, left: 10),
                child: Text(
                  "Medical history",
                  style: TextStyle(color: color3, fontWeight: FontWeight.bold),
                ),
              ),
              TextFormField(
                  decoration: InputDecoration(
                      hintText: "Medical history",
                      contentPadding: const EdgeInsets.only(
                          top: 0, bottom: 0, left: 10, right: 10),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: color2, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: color2, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(10))),
                  style: const TextStyle(
                    fontSize: 16,
                  )),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: color2,
                    textStyle: const TextStyle(fontSize: 18),
                    minimumSize: Size(MediaQuery.of(context).size.width, 45),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: const Text('Sign Up'),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ))
      ],
    )));
  }

  void pickDate(BuildContext context) async {
    var listDate = await showCalendarDatePicker2Dialog(
      context: context,
      config: CalendarDatePicker2WithActionButtonsConfig(),
      dialogSize: const Size(325, 400),
      initialValue: [DateTime.now()],
      borderRadius: BorderRadius.circular(10),
    );

    var textDate = (listDate!.isNotEmpty ? listDate[0] : null)
        .toString()
        .replaceAll('00:00:00.000', '');
    print('t${textDate}');
    setState(() {
      date.text = textDate;
    });
  }
}
