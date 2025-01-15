import 'package:assignment_day_15/create_todo_page.dart';
import 'package:flutter/material.dart';


class TaskListPage extends StatelessWidget {
  const TaskListPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text(
              "DO",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: const Color(0xFFF5F5F5),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Today Title and Filter Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Today",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  label: const Text("Filter", style: TextStyle(color: Colors.black)),
                  icon: const Icon(Icons.loop_outlined, color: Colors.black),

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 0,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),


            // Task List
            Expanded(
              child: ListView(
                children: [
                  taskItem(
                    title: "Return library books",
                    description: "Gather overdue library books and return...",
                    time: "11:30 AM",
                    date: "26/11/24",
                    isCompleted: false,
                  ),
                  const Divider(),
                  taskItem(
                    title: "Schedule car maintenance",
                    description: "Check your car's maintenance schedule",
                    time: "3:30 PM",
                    date: "26/11/24",
                    isCompleted: false,
                  ),
                  const Divider(),
                  taskItem(
                    title: "Go for grocery shop",
                    description: "",
                    time: "",
                    date: "",
                    isCompleted: true,
                  ),
                  const Divider(),
                  taskItem(
                    title: "Donate unwanted items",
                    description: "",
                    time: "",
                    date: "",
                    isCompleted: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) =>CreateTodoList()));
        },
        backgroundColor: Colors.black,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }


  Widget taskItem({
    required String title,
    required String description,
    required String time,
    required String date,
    required bool isCompleted,
  }) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: isCompleted ? Colors.blue : Colors.transparent,
        child: isCompleted
            ? const Icon(Icons.check, color: Colors.white)
            : const Icon(Icons.radio_button_unchecked, color: Colors.black,size: 40,),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          decoration: isCompleted ? TextDecoration.lineThrough : null,
        ),
      ),
      subtitle: description.isNotEmpty
          ? Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(description),
          const SizedBox(height: 4),
          Row(
            children: [
              if (time.isNotEmpty)
                Row(
                  children: [
                    const Icon(Icons.access_time, size: 14, color: Colors.grey),
                    const SizedBox(width: 4),
                    Text(time, style: const TextStyle(fontSize: 12, color: Colors.grey)),
                  ],
                ),
              if (time.isNotEmpty && date.isNotEmpty) const SizedBox(width: 16),
              if (date.isNotEmpty)
                Row(
                  children: [
                    const Icon(Icons.calendar_today, size: 14, color: Colors.grey),
                    const SizedBox(width: 4),
                    Text(date, style: const TextStyle(fontSize: 12, color: Colors.grey)),
                  ],
                ),
            ],
          ),
        ],
      )
          : null,
      trailing: isCompleted
          ? null
          : const Icon(Icons.notifications, size: 18, color: Colors.grey),
    );
  }
}
