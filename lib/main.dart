import 'dart:developer';

import 'package:grpc/grpc.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc_or_grpcweb.dart';
import 'package:untitled2/service.pbgrpc.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;
import './service.pb.dart';

// Android Studio hotkeys:
// CTRL + SPACE   : to get fields
// ALT + ENTER    : to wrap
// CTRL + ALT + L : formatter

final channel = ClientChannel(
  '64.226.73.174',
  port: 50000,
  options: const ChannelOptions(
    credentials: ChannelCredentials.insecure(),
  ),
);

final api = ApiHandlerClient(channel);

$fixnum.Int64 cid = $fixnum.Int64(0);
$fixnum.Int64? gid = $fixnum.Int64(0);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CourseList(),
      theme: ThemeData(
        // useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
    );
  }
}

class StudentLabTable extends StatefulWidget {
  @override
  _StudentLabTableState createState() => _StudentLabTableState();
}

class _StudentLabTableState extends State<StudentLabTable> {
  Map<$fixnum.Int64, Map<$fixnum.Int64, LabByUserResponse_UserLab>> labRes =
  Map<$fixnum.Int64, Map<$fixnum.Int64, LabByUserResponse_UserLab>>();

  List<GroupUserListResponse_Student> studentsNames = [];
  int studentsLen = 0;

  List<LabInfo> labNames = [];
  int labsLen = 0;

  void updateLabRes(int index, List<GroupUserListResponse_Student> studData,
      List<LabInfo> labInfo,
      Map<$fixnum.Int64, Map<$fixnum.Int64, LabByUserResponse_UserLab>> resData,
      LabByUserResponse p0) {
    log("index " + index.toString());
    for (var j = 0; j < p0.userLab.length; j++) {
      if (resData[studData[index].userId] == null) {
        resData[studData[index].userId] =
            Map<$fixnum.Int64, LabByUserResponse_UserLab>();
      }
      if (studData[index] != null) {
        resData[studData[index].userId]![p0.userLab[j].labId] =
        p0.userLab[j];
      }
    }
    if (index + 1 < studData.length) {
      api.getLabByUser(LabByUserRequest(userId: studData[index + 1].userId))
          .then((p1) =>
          updateLabRes(index + 1, studData, labInfo, resData, p1));
    }
    else {
      setState(() {
        labRes = resData;
        studentsNames = studData;
        studentsLen = studData.length;
        labNames = labInfo;
        labsLen = labInfo.length;
      });
    }
  }

  void updateStudents(List<GroupUserListResponse_Student> newData,
      List<LabInfo> labInfo) {
    Map<$fixnum.Int64, Map<$fixnum.Int64, LabByUserResponse_UserLab>> resData =
    Map<$fixnum.Int64, Map<$fixnum.Int64, LabByUserResponse_UserLab>>();
    log("students " + newData.length.toString());
    log("labs " + labInfo.length.toString());
    newData.sort((a, b) => a.lastName.compareTo(b.lastName));
    if (newData.isNotEmpty) {
      api.getLabByUser(LabByUserRequest(userId: newData[0].userId))
          .then((p0) => updateLabRes(0, newData, labInfo, resData, p0));
    }
    else {
      setState(() {
        labRes = resData;
        studentsNames = newData;
        studentsLen = newData.length;
        labNames = labInfo;
        labsLen = labInfo.length;
      });
    }
  }

  void updateLabInfo(List<LabInfo> newData) {
    api.getGroupUserList(GroupUserListRequest(groupId: gid)).then((p0) =>
        updateStudents(p0.students, newData));
  }

  String lName(int index) {
    if (labNames != null)
      return labNames![index].labName;
    else
      return "";
  }

  String sName(int index) {
    if (studentsNames != null)
      return studentsNames![index].lastName + " " +
          studentsNames![index].firstName;
    else
      return "";
  }

  Text getDesc(int i, int j) {
    var studentId = studentsNames[i].userId;
    var labId = labNames[j - 1].labId;
    if (labRes[studentId] != null && labRes[studentId]![labId] != null) {
      return Text(
          studentsNames[i].lastName + " " + studentsNames[i].firstName + "\n" +
              "Баллы: " + labRes[studentId]![labId]!.mark.toString() + "\n" +
              "OnRevision: " +
              labRes[studentId]![labId]!.onRevision.toString() + "\n" +
              "Время отправки: " +
              DateTime.fromMillisecondsSinceEpoch(
                  labRes[studentId]![labId]!.sendDate.seconds.toInt() * 1000)
                  .toString());
    }
    return Text("");
  }

  Text tlabNames(int index) {
    if (index == 0)
      return Text("Студент");
    return Text(lName(index - 1));
  }

  Text getMark(int i, int j) {
    var studentId = studentsNames[i].userId;
    var labId = labNames[j - 1].labId;
    if (labRes[studentId] != null && labRes[studentId]![labId] != null) {
      return Text(labRes[studentId]![labId]!.mark.toString());
    }
    return Text("");
  }

  bool isOnRevision(int i, int j) {
    var studentId = studentsNames[i].userId;
    var labId = labNames[j - 1].labId;
    if (labRes[studentId] != null && labRes[studentId]![labId] != null) {
      var onRev = labRes[studentId]![labId]!.onRevision;
      return onRev;
    }
    return false;
  }

  @override
  void initState() {
    super.initState();

    api.getLabsList(LabsListRequest(courceId: cid)).then((p0) =>
        updateLabInfo(p0.labs));
  }

  List<Widget> _buildRow(i) {
    return List.generate(
        labsLen,
            (j) =>
            GestureDetector(
              child: _buildCell(getMark(i, j + 1),
                  shortWidth: true,
                  color: isOnRevision(i, j + 1)
                      ? Colors.yellowAccent
                      : (getMark(i, j + 1).data != ""
                      ? Colors.greenAccent
                      : Colors.white)),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: tlabNames(j + 1),
                      content: getDesc(i, j + 1),
                      actions: <Widget>[
                        TextButton(
                          child: Text('Закрыть'),
                          onPressed: () {
                            Navigator.of(context)
                                .pop(); // Закрыть диалоговое окно
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ));
  }

  List<Widget> _buildLabList() {
    return List.generate(
        labsLen,
            (j) => _buildCell(Text(lName(j)), shortWidth: true)
    );
  }

  List<Widget> _buildRows() {
    return [Row(children: _buildLabList())] + List.generate(
      studentsLen,
          (i) =>
          Row(
            children: _buildRow(i),
          ),
    );
  }

  Widget _buildCell(content,
      {align = Alignment.center, color = Colors.white, shortWidth = false}) {
    return Container(
      alignment: align,
      width: shortWidth ? 80 : 120.0,
      height: 40.0,
      // color: color,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black38, width: 0.5),
          color: color
      ),
      child: content,
    );
  }

  List<Widget> _buildStudentWidgetList() {
    return [_buildCell(Text('Студенты'), align: Alignment.centerLeft)] +
        List.generate(studentsLen, (i) =>
            _buildCell(Text(sName(i)), align: Alignment.centerLeft));
  }

  Widget flexibleTable() {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _buildStudentWidgetList(),
            ),
            Flexible(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _buildRows(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return flexibleTable();
  }
}

class GroupList extends StatefulWidget {
  @override
  _GroupListState createState() => _GroupListState();
}

class _GroupListState extends State<GroupList> {
  List<GroupListResponse_Group>? groupNames;
  int len = 0;

  void updateData(List<GroupListResponse_Group> newData) {
    newData.sort((a, b) => a.name.compareTo(b.name));
    setState(() { groupNames = newData; len = newData.length; });
  }

  String gName(int index) {
    if (groupNames != null)
      return groupNames![index].name;
    else
      return "";
  }

  @override
  Widget build(BuildContext context) {
    api.getGroupList(GroupListRequest(courseId: cid)).then((p0) => updateData(p0.group));
    return Scaffold(
      appBar: AppBar(
        title: Text('Список групп'),
      ),
      body: ListView.builder(
        itemCount: len,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(gName(index)),
            onTap: () {
              if (groupNames != null) {
                gid = groupNames![index].groupId;
                // При нажатии на элемент списка

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => StudentLabTable(),
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}

class CourseList extends StatefulWidget {
  @override
  _CourseListState createState() => _CourseListState();
}

class _CourseListState extends State<CourseList> {
  List<Course>? courseNames;
  int len = 0;

  void updateData(List<Course> newData) {
    newData.sort((a, b) => a.courceName.compareTo(b.courceName));
    setState(() { courseNames = newData; len = newData.length; });
  }

  String cName(int index) {
    if (courseNames != null)
      return courseNames![index].courceName;
    else
      return "";
  }

  @override
  Widget build(BuildContext context) {

    api.getCourseList(CourseListRequest()).then((p0) => updateData(p0.cources));
    return Scaffold(
      appBar: AppBar(
        title: Text('Список курсов'),
      ),
      body: ListView.builder(
        itemCount: len,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cName(index)),
            onTap: () {
              if (courseNames != null) {
                cid = courseNames![index].courseId;
                // При нажатии на элемент списка
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => GroupList(),
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}