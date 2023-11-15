import 'package:flutter/material.dart';
import 'package:nobat_online/screen_viewer/reserv.dart';
import 'package:nobat_online/services/comment_service.dart';

class COMENTS extends StatefulWidget {
  const COMENTS({super.key});

  @override
  State<COMENTS> createState() => _COMENTSState();
}

class _COMENTSState extends State<COMENTS> {
  TextEditingController searchcontroler = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //*********************************************************** */

    var comments = COMMENT_SERVICE.comment_list.value;

    //********************************************* */
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Reserv();
            }));
          },
          child: Icon(Icons.arrow_back),
        ),
        body: SafeArea(
            child: Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 100),
          child: ValueListenableBuilder(
              valueListenable: COMMENT_SERVICE.comment_list,
              builder: (context, value, index) {
                return ListView.builder(
                    itemCount: COMMENT_SERVICE.comment_list.value.length,
                    itemBuilder: (context, index) {
                      COMMENT_SERVICE.get_comment_list();
                      print(comments.length);
                      var item = comments[index];
                      return Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Column(
                          children: [
                            Text(
                              item.name.toString() + "  میگه :",
                              textDirection: TextDirection.rtl,
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            Text(
                              item.comment_text.toString(),
                              textDirection: TextDirection.rtl,
                              maxLines: null,
                            ),
                            Container(
                              child: IconButton(
                                onPressed: () async {
                                  await COMMENT_SERVICE
                                      .delete_comment(item.id!);
                                  Navigator.pop(context);
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return COMENTS();
                                  }));
                                },
                                icon: Icon(Icons.delete),
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              }),
        )));
  }
}
