require("minitest/autorun")
require_relative("../hogwarts")

class TestStudent < MiniTest::Test

  def setup
    options = {"id" => 1, "first_name" => "Harry", "last_name" => "Potter", "house" => "Gryffindor", "age" => 15}

    @student = Student.new(options)
end
