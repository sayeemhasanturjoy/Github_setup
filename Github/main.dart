abstract class Role {

 void displayRole();



}

class  Person implements Role{

  String? name ;
  int? age ;
  String? address;

  Person (this.name,this.age,this.address)


  {

    this. name=name;
    this.age=age;
    this.address=address;
  }

  @override
  displayRole() {
    // TODO: implement displayRole
    throw UnimplementedError();
  }




}


class Student extends Person


{
  int? studentId  ;
  String?  grade ;
  List<int> courseScores=[];

  Student(super.name,super.age,super.address,this.studentId,this.grade)
  {

   this. name=name;
   this.age=age;
   this.address=address;
   this.studentId=studentId;
   this.grade=grade;
  }


  @override
  displayRole()
  {
    print ("Role : Student");

  }
    avgCal()
  {

    int  sum=0;
    double? avg;

    for (int i=0;i<courseScores.length;i++)

    {
      sum=sum+courseScores[i];

    }
    avg=sum/courseScores.length;
    print ( 'Avarage : $avg');

  }
  displayAllInfo()
  {
    displayRole();
    print ('Name:  $name');
    print ('Age:  $age');
    print ('Address:  $address');
    avgCal();

  }

}

class Teacher extends Person


{
  int? teacherId ;

  List<String> courseTaught=[];

  Teacher(super.name,super.age,super.address,this.teacherId)

  {
    name=name;
    age=age;
    address=address;
    teacherId=teacherId;


  }



  @override
  displayRole()
  {
    print ("Role : Teacher");
  }

   courseThought()
  {
    for (int i=0;i<courseTaught.length;i++)

    {
      print ('-'+courseTaught[i] );
    }

  }
  displayAllInfo()
  {
    displayRole();
    print ('Name:  $name');
    print ('Age:  $age');
    print ('Address:  $address');
    courseThought();
  }


}


void main (){

Student stobj=Student('John Doe',20,'123 Main st',1,'A' );
stobj.courseScores=[10,20,3];
print( stobj.displayAllInfo());





Teacher tecobj=Teacher('Mrs. Smith',35,'456 Oak st', 3 );
tecobj.courseTaught=['Math','English' ,'Bangla'];
print( tecobj.displayAllInfo());


}
