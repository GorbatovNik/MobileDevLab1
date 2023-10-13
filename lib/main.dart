import 'dart:developer';

import 'package:grpc/grpc.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc_or_grpcweb.dart';
import 'package:untitled2/service.pbgrpc.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;
import './service.pb.dart';

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

  void updateLabRes(int index, List<GroupUserListResponse_Student> studData, List<LabInfo> labInfo,
      Map<$fixnum.Int64, Map<$fixnum.Int64, LabByUserResponse_UserLab>> resData, LabByUserResponse p0) {
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
          .then((p1) => updateLabRes(index + 1, studData, labInfo, resData, p1));
    }
    else {
        setState(() { labRes = resData; studentsNames = studData;
          studentsLen = studData.length; labNames = labInfo;
        labsLen = labInfo.length; });
    }
  }

  void updateStudents(List<GroupUserListResponse_Student> newData, List<LabInfo> labInfo) {
    Map<$fixnum.Int64, Map<$fixnum.Int64, LabByUserResponse_UserLab>> resData =
    Map<$fixnum.Int64, Map<$fixnum.Int64, LabByUserResponse_UserLab>>();
    log("students " + newData.length.toString());
    log("labs " + labInfo.length.toString());
    if (newData.isNotEmpty) {
      api.getLabByUser(LabByUserRequest(userId: newData[0].userId))
          .then((p0) => updateLabRes(0, newData, labInfo, resData, p0));
    }
    else {
      setState(() { labRes = resData; studentsNames = newData;
      studentsLen = newData.length; labNames = labInfo;
      labsLen = labInfo.length; });
    }
  }

  void updateLabInfo(List<LabInfo> newData) {
    api.getGroupUserList(GroupUserListRequest(groupId: gid)).then((p0) => updateStudents(p0.students, newData));
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
          studentsNames![index].firstName + " " + studentsNames![index].patronymic;
    else
      return "";
  }

  String lRes($fixnum.Int64 studentId, $fixnum.Int64 labId) {
    if (labRes[studentId] != null && labRes[studentId]![labId] != null) {
        return "Баллы: " + labRes[studentId]![labId]!.mark.toString() + "\n"
            "Проверено: "+ labRes[studentId]![labId]!.onRevision.toString() + "\n"
            "Время отправки: "+
            DateTime.fromMillisecondsSinceEpoch(labRes[studentId]![labId]!.sendDate.seconds.toInt() * 1000).toString();
    }
    return "";
  }

  Text tlabNames(int index) {
    if (index == 0)
      return Text("Студент");
    return Text(lName(index - 1));
  }

  Text trowCell(int i, int j) {
    if (j == 0)
      return Text(sName(i));
    return Text(lRes(studentsNames[i].userId, labNames[j - 1].labId));
  }

  @override
  void initState() {
    super.initState();

    api.getLabsList(LabsListRequest(courceId: cid)).then((p0) => updateLabInfo(p0.labs));
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal, // Горизонтальная прокрутка
            child: DataTable(
              columns: List<DataColumn>.generate(labsLen + 1, (index) =>
                  DataColumn(label: tlabNames(index))),
              rows: List<DataRow>.generate(studentsLen, (i) =>
                  DataRow(cells: List<DataCell>.generate(labsLen + 1, (j) =>
                      DataCell(trowCell(i, j))))
              ),
            ),
          ),
        ),
    );
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