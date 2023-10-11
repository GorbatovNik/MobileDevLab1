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

  List<GroupUserListResponse_Student>? studentsNames;
  int studentsLen = 0;

  void updateStudents(List<GroupUserListResponse_Student> newData) {
    studentsLen = newData.length;
    studentsNames = newData;

    for (var i = 0; i < newData.length; i++) {
      api.getLabByUser(LabByUserRequest(userId: newData[i].userId))
          .then((p0) => (){
            for (var i = 0; i < p0.userLab.length; i++) {
              if (labRes[newData[i].userId] != null) {
                labRes[newData[i].userId] =
                    Map<$fixnum.Int64, LabByUserResponse_UserLab>();
              }
              if (newData[i] != null) {
                labRes[newData[i].userId]![p0.userLab[i].labId] =
                p0.userLab[i];
              }
            }
      });
    }
  }

  List<LabInfo>? labNames;
  int labsLen = 0;

  void updateLabInfo(List<LabInfo> newData) {
    labsLen = newData.length;
    labNames = newData;
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
        return labRes[studentId]![labId]!.mark.toString() + " "
            + labRes[studentId]![labId]!.onRevision.toString() + " "
            + labRes[studentId]![labId]!.sendDate.toString();
    }
    return "";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Таблица с горизонтальной прокруткой'),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal, // Горизонтальная прокрутка
            child: DataTable(
              columns: <DataColumn>[
                DataColumn(label: Text('Столбец 1')),
                DataColumn(label: Text('Столбец 2')),
                DataColumn(label: Text('Столбец 3')),
                // Добавьте дополнительные столбцы по мере необходимости
              ],
              rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  DataCell(Text('Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1Ячейка 1.1')),
                  DataCell(Text('Ячейка 1.2')),
                  DataCell(Text('Ячейка 1.3')),
                  // Добавьте дополнительные ячейки по мере необходимости
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Ячейка 1.1')),
                  DataCell(Text('Ячейка 1.2')),
                  DataCell(Text('Ячейка 1.3')),
                  // Добавьте дополнительные ячейки по мере необходимости
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Ячейка 1.1')),
                  DataCell(Text('Ячейка 1.2')),
                  DataCell(Text('Ячейка 1.3')),
                  // Добавьте дополнительные ячейки по мере необходимости
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Ячейка 1.1')),
                  DataCell(Text('Ячейка 1.2')),
                  DataCell(Text('Ячейка 1.3')),
                  // Добавьте дополнительные ячейки по мере необходимости
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Ячейка 1.1')),
                  DataCell(Text('Ячейка 1.2')),
                  DataCell(Text('Ячейка 1.3')),
                  // Добавьте дополнительные ячейки по мере необходимости
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Ячейка 1.1')),
                  DataCell(Text('Ячейка 1.2')),
                  DataCell(Text('Ячейка 1.3')),
                  // Добавьте дополнительные ячейки по мере необходимости
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Ячейка 1.1')),
                  DataCell(Text('Ячейка 1.2')),
                  DataCell(Text('Ячейка 1.3')),
                  // Добавьте дополнительные ячейки по мере необходимости
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Ячейка 1.1')),
                  DataCell(Text('Ячейка 1.2')),
                  DataCell(Text('Ячейка 1.3')),
                  // Добавьте дополнительные ячейки по мере необходимости
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Ячейка 1.1')),
                  DataCell(Text('Ячейка 1.2')),
                  DataCell(Text('Ячейка 1.3')),
                  // Добавьте дополнительные ячейки по мере необходимости
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Ячейка 1.1')),
                  DataCell(Text('Ячейка 1.2')),
                  DataCell(Text('Ячейка 1.3')),
                  // Добавьте дополнительные ячейки по мере необходимости
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Ячейка 1.1')),
                  DataCell(Text('Ячейка 1.2')),
                  DataCell(Text('Ячейка 1.3')),
                  // Добавьте дополнительные ячейки по мере необходимости
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Ячейка 1.1')),
                  DataCell(Text('Ячейка 1.2')),
                  DataCell(Text('Ячейка 1.3')),
                  // Добавьте дополнительные ячейки по мере необходимости
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Ячейка 1.1')),
                  DataCell(Text('Ячейка 1.2')),
                  DataCell(Text('Ячейка 1.3')),
                  // Добавьте дополнительные ячейки по мере необходимости
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Ячейка 1.1')),
                  DataCell(Text('Ячейка 1.2')),
                  DataCell(Text('Ячейка 1.3')),
                  // Добавьте дополнительные ячейки по мере необходимости
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Ячейка 1.1')),
                  DataCell(Text('Ячейка 1.2')),
                  DataCell(Text('Ячейка 1.3')),
                  // Добавьте дополнительные ячейки по мере необходимости
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Ячейка 1.1')),
                  DataCell(Text('Ячейка 1.2')),
                  DataCell(Text('Ячейка 1.3')),
                  // Добавьте дополнительные ячейки по мере необходимости
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Ячейка 1.1')),
                  DataCell(Text('Ячейка 1.2')),
                  DataCell(Text('Ячейка 1.3')),
                  // Добавьте дополнительные ячейки по мере необходимости
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Ячейка 1.1')),
                  DataCell(Text('Ячейка 1.2')),
                  DataCell(Text('Ячейка 1.3')),
                  // Добавьте дополнительные ячейки по мере необходимости
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Ячейка 1.1')),
                  DataCell(Text('Ячейка 1.2')),
                  DataCell(Text('Ячейка 1.3')),
                  // Добавьте дополнительные ячейки по мере необходимости
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Ячейка 1.1')),
                  DataCell(Text('Ячейка 1.2')),
                  DataCell(Text('Ячейка 1.3')),
                  // Добавьте дополнительные ячейки по мере необходимости
                ]),
                // Добавьте дополнительные строки по мере необходимости
              ],
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
                $fixnum.Int64? gid = groupNames![index].groupId;
                // При нажатии на элемент списка
                StudentLabTable slt = StudentLabTable();
                _StudentLabTableState state = slt.createState();
                api.getGroupUserList(GroupUserListRequest(groupId: gid)).then((p0) => () {
                  state.updateStudents(p0.students);
                });

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
                $fixnum.Int64? cid = courseNames![index].courseId;
                // При нажатии на элемент списка
                GroupList g = GroupList();
                api.getGroupList(GroupListRequest(courseId: cid)).then((p0) => g.createState().updateData(p0.group));
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => g,
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