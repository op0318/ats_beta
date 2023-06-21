

class Employees{
  late final int Empid;
  late String Location ;

  Employees({required this.Empid , required this.Location});
  Map<String,dynamic> toMap(){
    return {
      'Empid' : Empid,
      'Location': Location,

    };
  }

  Employees.fromFirestore(Map<String, dynamic> firestore)
      : Empid = firestore['Empid'],
        Location = firestore['Location'];


}