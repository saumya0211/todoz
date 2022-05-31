class Task{
   String TaskText;
   bool isDone;

   Task({required this.TaskText,this.isDone = false});

   void ToggleCheckState(){
     isDone = !isDone;
   }
}