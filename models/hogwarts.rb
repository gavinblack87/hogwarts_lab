require_relative('../db/sql_runner.rb')

class Student

 attr_reader :first_name, :last_name, :house, :age, :id

 def initialize( options )
   @id = options['id'].to_i
   @first_name = options['first_name']
   @last_name = options['last_name']
   @house = options['house']
   @age = options['age'].to_i
 end



def full_name()
  return "#{@first_name} #{@last_name}"
end

def save()
   sql = "INSERT INTO students
   (
     first_name,
     last_name,
     house,
     age
   )
   VALUES
   (
     $1, $2, $3, $4
   )
   RETURNING *"
   values = [@first_name, @last_name, @house, @age]
   student_data = SqlRunner.run(sql, values)
   @id = student_data.first()['id'].to_i
 end


def self.delete_all()
  sql = "DELETE FROM students;"
  SqlRunner.run(sql)
end


 def delete()
   sql = "DELETE FROM students
   WHERE id = $1"
   values = [@id]
   SqlRunner.run( sql, values )
 end

 def self.all()
   sql = "SELECT * FROM students"
   students = SqlRunner.run( sql )
   result = students.map { |student| Student.new(student) }
   return result
 end

 def self.find( id )
   sql = "SELECT * FROM students
   WHERE id = $1"
   values = [id]
   student = SqlRunner.run( sql, values )
   result = Student.new( student.first )
   return result
 end


end
