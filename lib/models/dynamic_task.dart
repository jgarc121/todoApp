class Dynamic_Task {

    final String name;
    bool isDone;

    Dynamic_Task({this.name, this.isDone = false});

    void toggleDone() {
      isDone = !isDone;
    }
}