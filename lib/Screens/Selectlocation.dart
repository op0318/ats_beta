import 'package:ats_beta/Screens/Authentication/login.dart';
import 'package:ats_beta/Screens/Dashboard/Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';


class SelectMapping extends StatefulWidget {
  const SelectMapping({Key? key}) : super(key: key);

  @override
  State<SelectMapping> createState() => _SelectMappingState();
}

class _SelectMappingState extends State<SelectMapping> {
  List locations=[
    'Mountain View',
    'Mepz ',
    'Tidel',
    'Thanjavur ',
    'Client Location',
    'Work from home'];





  var myvalue;
  String? Address;
  //function which is used ro get the latitude and the langitude
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;


    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    return await Geolocator.getCurrentPosition();

  }
  Future<void>GetAddressFromLatLong(Position position)async{
    List<Placemark> placemark=await placemarkFromCoordinates(position.latitude ,position.longitude);
print(placemark);
Placemark place=placemark[0];
setState(() {
  Address ='${place.locality}';

});







  }
  @override
  Widget build(BuildContext context) {
    void check()
    {
      if(Address==locations[0])
      {
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Dashboard(),));
        print('Welcome to guindy office');


      }
      else
      {
        print('you ar not at the correct location');
      }


    }
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromRGBO(1, 119, 178, 1),
        child: Center(
          child:
          Container(
            decoration:
          BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white),
            margin: EdgeInsets.only(left: 6,right: 6),
            padding: EdgeInsets.only(top: 20),
            height: 580,
            width: 420,
            child: Column(

              children: [
                Text('Select Location',style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold),
                ),

              SizedBox(height: 400,width: 400,child:
              Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...locations.map((location){
                      return Padding(
                        padding: const EdgeInsets.only(left: 20,top: 5),
                        child: RadioListTile(
                          groupValue: myvalue,
                          value:location.toString(),
                          onChanged:(values){
                            setState(() {
                              myvalue=values.toString();
                            });
                          } ,title: Text(location,style: TextStyle(color: Colors.grey,
                              fontSize: 26,fontWeight: FontWeight.bold),
                          ),
                        ),
                      );}).toList()],
                ),



              ),),
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom:20 ),
                child: Row(
                  children: [
                    SizedBox(width: 50,),
                    Container(
                        height: 40,
                      width: 140,

                        child: Center(child: TextButton(onPressed: (){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Employeepage(),));
                        },child: Text("Cancel",style: TextStyle(
                          fontSize: 20,color: Color.fromRGBO(0,68,102,1)

                        ),)),),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white)),
                    SizedBox(width: 50,),

                    Container(height: 40,
                      width: 140,
                      child: ElevatedButton(
                        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(0,68,102,1))),
                        onPressed: () async {
                          _determinePosition();
                          Position position=await _determinePosition();
                          GetAddressFromLatLong(position);
                          check();








                        },child: Text('OK',),),
                    )],
                ),
              )],
            ),

          ),
        ),
      ),


    );
  }
}
