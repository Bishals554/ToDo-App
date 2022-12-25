import 'package:flutter/material.dart';
import '../model/todo.dart';
import '../widgets/todo_item.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todosList = ToDo.todoList();
  final _todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEFF5),
      appBar: _buildAppBar(),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              children: [
                // searchBox(),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 50, bottom: 20),
                        child: Text(
                          'All ToDo',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w500),
                        ),
                      ),
                      for (ToDo todo in todosList)
                        ToDoItems(
                          todo: todo,
                          onToDoChanged: _handleToDoChange,
                          onDeletItem: _deleteToDoItem,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Expanded(
                      child: (Container(
                    margin: EdgeInsets.only(
                        bottom: 20,
                        right: 20,
                        left: 20,
                    ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [BoxShadow(
                            color: Colors.grey,
                              offset:Offset(0.0, 0.0),
                            blurRadius: 10.0,
                            spreadRadius: 0.0,
                          ),],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          controller: _todoController,
                          decoration: InputDecoration(
                            hintText: 'Add new todo items',
                            border: InputBorder.none,

                          ),

                        ),
                  )),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        bottom: 20,
                        right: 20,
                    ),
                    child: ElevatedButton(
                      child: Text('+', style: TextStyle(fontSize: 40,),),
                      onPressed: (){
                        _addToDoItem(_todoController.text);
                      },
                      style: ElevatedButton.styleFrom(
                       primary: Color(0xFF5F52EE),
                        minimumSize: Size(60, 60),
                        elevation: 10,
                      ),
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }

  void _handleToDoChange(ToDo todo){
    setState(() {
      todo.isDone = !todo.isDone;
    });

  }

  void _deleteToDoItem(String id){
    setState(() {
      todosList.removeWhere((item) => item.id == id);
    });

  }


  void _addToDoItem(String toDo){
    if(toDo.isEmpty){
      return;
    }
    setState(() {
      todosList.add(ToDo(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        todoText: toDo,
      ));
    });
    _todoController.clear();
  }

  // Widget searchBox() {
  //   return Container(
  //     padding: EdgeInsets.symmetric(horizontal: 15),
  //     decoration: BoxDecoration(
  //         color: Colors.white, borderRadius: BorderRadius.circular(20)),
  //     child: TextField(
  //       decoration: InputDecoration(
  //           contentPadding: EdgeInsets.all(0),
  //           prefixIcon: Icon(
  //             Icons.search,
  //             color: Colors.black,
  //             size: 20,
  //           ),
  //           prefixIconConstraints: BoxConstraints(
  //             maxHeight: 20,
  //             maxWidth: 25,
  //           ),
  //           border: InputBorder.none,
  //           hintText: 'Search here',
  //           hintStyle: TextStyle(color: Colors.grey)),
  //     ),
  //   );
  // }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xFFEEEFF5),
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: Icon(
              Icons.menu,
              color: Colors.black,
              size: 30,
            ),

          ),


          // GestureDetector(
          //   onTap: (){
          //     print('Click in menu icon');
          //
          //
          //   },
          // ),
          // Icon(
          //   Icons.menu,
          //   color: Colors.black,
          //   size: 30,
          // ),
          GestureDetector(
            onTap: (){
              //print('Tap on image');
              Navigator.pushNamed(context, '/profile');

            },
            child : Container(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/image/bishal.jpg'),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
