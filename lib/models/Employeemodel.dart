

class Employees{
  late  int Empid;
  late String Location ;
  late String Name;
  late String uid;


  Employees({required this.Empid , required this.Location,required this.Name, required this.uid});
  Map<String,dynamic> toMap(){
    return {
      'Empid' : Empid,
      'Location': Location,
      'Name' : Name,
      'uid' : uid,

    };
  }

  Employees.fromFirestore(Map<String, dynamic> firestore)
      : Empid = firestore['Empid'],
        Location = firestore['Location'],
         uid= firestore['uid'],
         Name = firestore['Name'];


}