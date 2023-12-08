abstract class Role {

  void displayRole();



}


class  Person implements Role{

  late String? name ;
  late int? age ;
  late String? address;

  Person (this.name,this.age,this.address)


  {

    name=name;
    age=age;
    address=address;
  }

  @override
  displayRole()
  {}



}


class Student extends Person  implements Role


{
  late int? studentId  ;
  late String?  grade ;
  late  List<int> courseScores=[];

  Student(super.name,super.age,super.address,this.studentId,this.grade)
  {

    name=name;
    age=age;
    address=address;
    studentId=studentId;
    grade=grade;
  }
  @override
  displayRole()
  {}


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
      print ('-'+courseTaught[i].toString() );
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


//print( stobj.displayAllInfo());
  stobj.displayAllInfo();




  Teacher tecobj=Teacher('Mrs. Smith',35,'456 Oak st', 3 );
  tecobj.courseTaught=['Math','English' ,'Bangla'];

  tecobj.displayAllInfo();

}