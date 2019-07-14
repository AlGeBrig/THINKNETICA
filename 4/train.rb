class Train
  attr_reader :number, :current_speed, :wagons

  def initialize(number)
    @number = number
    @wagons = []
    @current_speed = 0
  end

  def speedup(number)
    @current_speed = number
    puts "Speedup is #{@current_speed}"
  end

  def current_speed
    puts "Current speed is #{@current_speed}"
  end

  def stop
    @current_speed = 0
    puts "Stop! Current speed is #{@current_speed}"
  end

    def add_wagon(wagon)
    if @current_speed == 0
      @wagons.push(wagon) 
    else
      puts "There is no way to add wagon while its speed isn't equal to 0"
    end
    puts "Number of wagons = #{@wagons}"
  end

  def delete_wagon(wagon)
    if @current_speed == 0 && @wagons > 0
      @wagons.delete(wagon)
    else
      puts 'There is no way to delete wagon from the train'
    end
  end

  def get_route(route)
    @route = route
    @station = 0
    current_station.get_train(self)
  end

  def current_station
    @route.stations[@station]
  end

  def next_station
    @route.stations[@station + 1]
  end

  def prev_station
    @route.station[@station - 1] if @station != 0
  end

  def forward
    return if next_station.nil?
    current_station.train_out(self)
    next_station.get_train(self)
    @station += 1
  end

  def back
    return if prev_station.nil?
    current_station.train_out(self)
    prev_station.get_train(self)
    @station -= 1
  end
end
