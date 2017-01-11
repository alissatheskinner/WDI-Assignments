Object Oriented Javascript Workshop

// // Square

function Square(width, height){
  this.width = width;
  this.height = height;
}

Square.prototype.getArea = function(){
  return this.width * this.height; 
};

Square.prototype.getParameter = function(){
  return 4 * this.width;
};

var Square1 = new Square (4, 5);
  Square1.getArea();
  Square1.getParameter();


// // Rectangle

function Rectangle (width, height){
  this.width = width;
  this.height = height;
}

Rectangle.prototype.getArea = function(){
  return this.width * this.height; 
};

Rectangle.prototype.getParameter = function(){
  return (2 * this.width) + (2 * this.height);
};

var Rectangle1 = new Rectangle (5, 6);
  Rectangle1.getArea();
  Rectangle1.getParameter();


// // Multiplier



function Multiplier() {
    this.currentValue = 1;
}

Multiplier.prototype.multiplyNum = function(number){
  
  var result = number * this.currentValue; 
  this.currentValue = result; 
  return result; 
}

Multiplier.prototype.getCurrentValue = function (){
    return this.currentValue; 
};

Multiplier.prototype.clearValue = function (){
  this.currentValue = 1; 
  return this.currentValue;
};

var myMultiplier = new Multiplier()
  myMultiplier.multiplyNum(10);
  myMultiplier.multiplyNum(10);
  myMultiplier.clearValue();
  myMultiplier.multiplyNum(10);



// // ClassRoom

function Classroom(capacity, instructorName, roomNumber){
  this.enrolledStudents = [];
  this.capacity = capacity;
  this.instructorName = instructorName;
  this.roomNumber = roomNumber; 
}

var myClass = new Classroom (5, 'ASkinner', '201');
  console.log(myClass.capacity);
  console.log(myClass.instructorName);
  console.log(myClass.roomNumber);


//- addStudent(name, email) "should add a new student object, with the provided name and email, to the enrolledStudents array"

Classroom.prototype.addStudent = function (name, email){
  var studentToAdd = {
      name: name,
      email: email
  }; 
  this.enrolledStudents.push(studentToAdd)  
}

var myClass = new Classroom (30, 'ASkinner', '201');
myClass.addStudent('Alissa', 'myemail@gmail.com');
myClass.addStudent('GEORGE', 'myemail@gmail.com');

console.log(myClass.enrolledStudents);


// - removeStudent(student) "should remove the given student from the student array"

Classroom.prototype.removeStudent = function (student){
  
  var indexToRemove = this.enrolledStudents.indexOf(student);
  this.enrolledStudents.splice(indexToRemove, 1);

}


// - getAllStudents() "Should return the enrolledStudents array"

Classroom.prototype.getAllStudents = function(){
  return this.enrolledStudents;
}



Classroom.prototype.findStudent = function (email){
  for (var i = 0; i < this.enrolledStudents.length; i++){
    if (this.enrolledStudents[i].email == email){
      return this.enrolledStudents[i];
    }
  }
}

Classroom.prototype.isFull = function(){
  
  if (this.enrolledStudents.length > this.capacity){
    return true;
  }else {
    return false; 
  }
}

Classroom.prototype.getRemainingSeatCount = function(){
  return this.capacity - this.enrolledstudent.length;
}


