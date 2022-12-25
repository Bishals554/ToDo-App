class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,

});

  static List<ToDo> todoList(){
    return[
      // ToDo(id: '01', todoText: 'Excercise', isDone: true),
      // ToDo(id: '02', todoText: 'Buy something', isDone: true),
      // ToDo(id: '03', todoText: 'Check mails'),
      // ToDo(id: '04', todoText: 'Teem Meating'),
      // ToDo(id: '05', todoText: 'Work for coding'),
      // ToDo(id: '06', todoText: 'Dinner'),
    ];
  }
}