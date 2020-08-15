import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jsd/components/sortIcon.dart';
import 'package:jsd/service/getListWord.dart';
import 'components/word_list_holder.dart';
import 'models/wordModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  getData() async {
    var _data = await getListWord();
    setState(() {
      list = _data;
      viewList = _data;
      isLoading = false;
    });
  }

  getViewList() {
    List<Word> _list = [];
    if (keyWord.isNotEmpty) {
      list.forEach((val) {
        if (val.word.toLowerCase().contains(keyWord.toLowerCase()))
          _list.add(val);
      });
    } else {
      _list = list;
    }
    (isAscending)
        ? _list.sort((a, b) => a.word.compareTo(b.word))
        : _list.sort((b, a) => a.word.compareTo(b.word));
    setState(() {
      viewList = _list;
    });
  }

  var txtController = TextEditingController();
  bool isLoading, isAscending = true;
  String keyWord = '';
  List<Word> list = [], viewList = [];
  @override
  void initState() {
    txtController.text = '';
    isLoading = true;
    getData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
              child: SafeArea(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 110,
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Title(
                        title: 'Japanese slang dictionary',
                        color: Colors.white,
                        child: Row(children: [
                          Text('Japanese slang dictionary',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white)),
                        ]),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                padding: EdgeInsets.all(5),
                                width: width * 0.8,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: TextFormField(
                                    onChanged: (keyword) {
                                      setState(() {
                                        keyWord = keyword;
                                      });
                                      getViewList();
                                    },
                                    controller: txtController,
                                    decoration: InputDecoration(
                                        hintText: 'Search Word',
                                        border: InputBorder.none,
                                        fillColor: Colors.white,
                                        prefixIcon: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(Icons.search),
                                        )),
                                  ),
                                )),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    isAscending = !isAscending;
                                  
                                  });
                                  getViewList();
                                },
                                child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: (isAscending) ? SortAsc() : SortDsc()))
                          ]),
                    ],
                  )),
              Container(
                      color: Colors.grey[350],
                      width: width,
                      child: (isLoading)?Center(child: SizedBox(
                        height: 50,width: 50,
                        child: CircularProgressIndicator(),
                      )):ListView.builder(
                        itemCount: viewList.length,
                        itemBuilder: (context,index)=>WordListHolder(width: width,viewList:list,word:viewList[index])),
                      height: height-130)
            ],
          ),
        ),
      ),
    );
  }
}
