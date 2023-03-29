import 'package:flutter/material.dart';
import 'package:inventory/componets/group.dart';

class GroupInherited extends InheritedWidget {
  const GroupInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Group> groups = const [
    Group(name: 'Avon', photo: 'assets/images/avon.jpg'),
    Group(name: 'Boticario', photo: 'assets/images/boticario.jpg'),
    Group(name: 'Demillus', photo: 'assets/images/LOGOS-Demillus.png'),
    Group(name: 'Natura', photo: 'assets/images/logo-natura.jpeg')
  ];

  static GroupInherited of(BuildContext context) {
    final GroupInherited? result =
        context.dependOnInheritedWidgetOfExactType<GroupInherited>();
    assert(result != null, 'No GroupInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(GroupInherited oldWidget) {
    return oldWidget.groups.length != groups.length;
  }
}
