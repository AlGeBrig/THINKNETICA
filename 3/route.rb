class Route
  attr_reader :stations

  def initialize(first_st, last_st)
    @stations = [first_st, last_st]
  end

  def add_station(station)
    stations.insert(-2, station)
    puts "All stations:#{stations}"
    end

  def delete_station(station)
    @stations.delete(station)
  end

  def list_station
    puts "List of stations: #{@stations}"
  end
end
