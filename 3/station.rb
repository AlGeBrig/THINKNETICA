class Station
  attr_reader :name, :trains
  def initialize(name)
    @name = name
    @trains = []
    puts "Station #{name} is ready"
  end

  def get_train(train)
    trains << train
    puts "Train #{train} is arrived on the station #{@name}"
    end

  def all_train
    puts "There are trains at the station #{@name}: #{trains}"
  end

  def type_train(type)
    @trains.select { |train| train.type == type }.count
  end

  def train_out(train)
    puts "Train #{@trains.delete(train)} is leaving station #{@name}"
    @trains.delete(train)
    end
end
