require_relative('../db/sql_runner')

class House

  attr_reader :house_name, :id

def initialize(options)
  @id = options['id'].to_i if options['id']
  @house_name = options['house_name']
end


 def save()
    sql = "INSERT INTO houses
    (
      house_name
    )
    VALUES
    (
      $1
    )
    RETURNING *"
    values = [@house_name]
    house_data = SqlRunner.run(sql, values)
    @id = house_data.first()['id'].to_i
  end


def self.find(id)
  sql = "SELECT * FROM houses WHERE id = $1"
  values = [id]
  house = SqlRunner.run(sql, values)
  result = House.new(house.first)
  return result
end

end
