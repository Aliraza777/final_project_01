import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class AddComplain extends StatefulWidget {
  const AddComplain({Key? key}) : super(key: key);

  @override
  _AddComplainState createState() => _AddComplainState();
}

class _AddComplainState extends State<AddComplain> {
  String? selectedservice;
  List<String> _hostel = [];
  List<String> _university = [];
  double serachInputh = 100;
  List<String> _filter = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _hostel.add('Dorm-G-01');
    _hostel.add('Dorm-G-02');
    _hostel.add('Dorm-G-03');
    _hostel.add('Dorm-G-04');
    _hostel.add('Dorm-G-05');
    _hostel.add('Dorm-G-06');
    _hostel.add('Dorm-G-07');
    _hostel.add('Dorm-G-08');
    _hostel.add('Dorm-G-09');
    _hostel.add('Dorm-G-10');
    _hostel.add('Dorm-A-01');
    _hostel.add('Dorm-B-01');
    _hostel.add('Dorm-C-01');
    _hostel.add('Dorm-D-01');
    _hostel.add('Dorm-E-01');
    _hostel.add('Dorm-F-01');
    _hostel.add('Block-01');
    _university.add('Block-01');
    _university.add('Block-02');
    _university.add('Block-03');
    _university.add('Block-04');
    _university.add('Block-05');
    _university.add('Block-06');
    _university.add('Block-07');
    _university.add('Lab-01');
    _university.add('Lab-01');
    _university.add('Lab-02');
    _university.add('LH-01');
    _university.add('LH-02');
    // _filter=this._hostel;
    _serachQuery.addListener(_onSerachChanged);
  }

  TextEditingController _serachQuery = new TextEditingController();
  Timer? _debounce;
  String serachText = '';

  final List location_list = ["Hostel", "University"];
  File? image;
  String? uservalue;
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      // await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      print("Failed to pick image: $e");
    }
  }

  List<String> services = [
    "Transport",
    "Inventory",
    "Despensery",
    "Carpenter",
    "Electrical",
    "Plumber",
    "Generator Technician",
    "Mason",
    "AC Technician",
    "Drainage",
    "Cleaning",
    "Cylinder Replacement"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Complain"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                textInputAction: TextInputAction.next,
                maxLength: 50,
                decoration: InputDecoration(
                  labelText: 'Title',
                  //show errors here
                  // errorText: 'Error message',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.title_outlined),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                maxLength: 200,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.multiline,
                minLines: 1,
                //Normal textInputField will be displayed
                maxLines: 3,
                // when user presses enter it will adapt to it
                decoration: InputDecoration(
                  labelText: 'Description',
                  //show errors here
                  // errorText: 'Error message',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.insert_comment_outlined),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(5)),
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.settings),
                  ),
                  elevation: 16,
                  value: selectedservice,
                  hint: Text("Services"),
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  iconSize: 36,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  isExpanded: true,
                  onChanged: (newValue) {
                    setState(() {
                      selectedservice = newValue.toString();
                    });
                  },
                  items: services.map((valueItem) {
                    return DropdownMenuItem(
                      value: valueItem,
                      child: Text(valueItem),
                    );
                  }).toList(),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(5)),
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.home),
                  ),
                  elevation: 16,
                  value: uservalue,
                  hint: Text("Location"),
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  iconSize: 36,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  isExpanded: true,
                  onChanged: (newValue) {
                    setState(() {
                      uservalue = newValue.toString();
                      _serachQuery.clear();
                    });
                  },
                  items: location_list.map((valueItem) {
                    return DropdownMenuItem(
                      value: valueItem,
                      child: Text(valueItem),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: serachInputh,
                child: Column(
                  children: [
                    InkWell(
                      child: TextFormField(
                        controller: _serachQuery,
                        onTap: () {
                          setState(() {
                            serachInputh = 300;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Address',
                          hintText: 'Dorm-A-01 / Block-01',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.room),
                        ),
                      ),
                    ),
                    Expanded(
                        child: ListView.separated(
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return ListTile(
                                tileColor: Colors.grey.shade300,
                                title: Text(_filter[index].toString()),
                                onTap: () {
                                  setState(() {
                                    _serachQuery.value =
                                        _serachQuery.value.copyWith(
                                      text: _filter[index].toString(),
                                    );
                                    serachInputh = 100;
                                    _filter.clear();
                                  });
                                },
                              );
                            },
                            separatorBuilder: (context, index) {
                              return Divider();
                            },
                            itemCount: _filter.length)),
                  ],
                ),
              ),
              if (image != null)
                Card(
                  elevation: 5,
                  child: Image.file(
                    image!,
                    width: MediaQuery.of(context).size.width / 2,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                )
              else
                Text(
                  "No Image Selected Yet!",
                  style: TextStyle(fontSize: 20),
                ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        pickImage(ImageSource.camera);
                      },
                      child: Icon(Icons.camera_alt_outlined)),
                  ElevatedButton(
                      onPressed: () {
                        pickImage(ImageSource.gallery);
                      },
                      child: Icon(Icons.collections_bookmark_outlined)),
                ],
              ),

              ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (_) => AdvanceSearch()));
                  },
                  child: Text("Add Complain"))
              //TODO Add image picker
            ],
          ),
        ),
      ),
    );
  }

  _onSerachChanged() {
    if (_debounce?.isActive ?? false) {
      _debounce?.cancel();
    }
    _debounce = Timer(
      const Duration(milliseconds: 500),
      () {
        if (this.serachText != _serachQuery.text) {
          if (uservalue == 'Hostel')
            _filter = this._hostel;
          else
            _filter = this._university;

          setState(() {
            _filter = this
                ._filter
                .where((item) => item
                    .toString()
                    .replaceAll(RegExp(r'[^\w\\s]+'), '')
                    .toLowerCase()
                    .contains(_serachQuery.text
                        .toString()
                        .replaceAll(RegExp(r'[^\w\\s]+'), '')
                        .toLowerCase()))
                .toList();
          });
        }
        this.serachText = _serachQuery.text;
      },
    );
  } //onSerachChanged

  @override
  void dispose() {
    _serachQuery.removeListener(_onSerachChanged);
    _serachQuery.dispose();
    _debounce?.cancel();
    super.dispose();
  }
}

DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: TextStyle(fontSize: 15),
      ),
    );
