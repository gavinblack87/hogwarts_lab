require_relative('../models/hogwarts')

student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house" => "Gryffindor",
  "age" => "15"
  })

  student2 = Student.new({
    "first_name" => "George",
    "last_name" => "Smith",
    "house" => "Ravenclaw",
    "age" => "17"
    })


    student3 = Student.new({
      "first_name" => "Eve",
      "last_name" => "White",
      "house" => "Hufflepuff",
      "age" => "16"
      })

      student1.save()
      student2.save()
      student3.save()
      
