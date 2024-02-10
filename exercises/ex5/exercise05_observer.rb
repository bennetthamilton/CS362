# Name: Bennett Hamilton
# Exercise 5: Observer Pattern

class WeatherStation

  attr_accessor :temperature

  def initialize
    @temperature = 0
    @observers = []
  end

  def add_observer(observer)
    @observers << observer
  end

  def temperature=(new_temperature)
    @temperature = new_temperature
    @observers.each do |o|
      o.notify(self)
    end
  end

end

class StationObserver

  def initialize(weather_station)
    weather_station.add_observer(self)
  end
  
  def notify(weather_station)
    puts "The temperature is now #{weather_station.temperature}"
  end
  
end

weather_station = WeatherStation.new
# TODO: Add a new observer to the weather station

weather_station.temperature = 72
