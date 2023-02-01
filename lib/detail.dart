import 'package:did_update_widget/repo.dart';
import 'package:flutter/material.dart';
import 'package:did_update_widget/enum.dart';

class FrameworkDetail extends StatefulWidget {
  final ProgrammingFrameworks frameworks;
  const FrameworkDetail({
    Key? key,
    required this.frameworks,
  }) : super(key: key);

  @override
  State<FrameworkDetail> createState() => FrameworkDetailState();
}

class FrameworkDetailState extends State<FrameworkDetail> {
  String values = "";
  @override
  void initState() {
    print("state çalıştı");
    createItems();
    super.initState();
  }

  createItems() async {
    values = "";
    setState(() {});
    values = await getFrameworks(widget.frameworks);
    setState(() {});
  }

  @override
  void didUpdateWidget(oldWidget) {
    createItems();
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print("build aldı");
    return Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                widget.frameworks.title,
              ),
              const Divider(),
              Text(values),
            ],
          ),
        ),
      ),
    );
  }
}
