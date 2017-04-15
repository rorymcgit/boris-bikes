# Makers Academy - Boris Bikes Challenge (Week 1)

This project was written in week 1 of Makers Academy. We were tasked with emulating the Boris Bikes (Santander Cycles) docking/releasing system while pair programming using an object oriented, test-driven approach in Ruby.

Instructions for use:
- Clone this repo
- Run ```bundle``` to install dependencies
- Run ```rspec``` to view tests
- Run ```irb```

Example usage:
```
2.2.3 :001 > require_relative './lib/bike'
 => true
2.2.3 :002 > require_relative './lib/docking_station'
 => true
2.2.3 :003 > bike1 = Bike.new
 => #<Bike:0x007fe59e188108>
2.2.3 :004 > bike2 = Bike.new
 => #<Bike:0x007fe59e1909c0>
2.2.3 :005 > bike3 = Bike.new
 => #<Bike:0x007fe59e199278>
2.2.3 :006 > station = DockingStation.new(2)
 => #<DockingStation:0x007fe59e1a8c50 @capacity=2, @bikes=[]>
2.2.3 :007 > station.dock_bike(bike1)
 => [#<Bike:0x007fe59e188108>]
2.2.3 :008 > station.dock_bike(bike2)
 => [#<Bike:0x007fe59e188108>, #<Bike:0x007fe59e1909c0>]
2.2.3 :009 > station.dock_bike(bike3)
RuntimeError: Docking station is full
	from /Users/rorymcguinness/Desktop/Makers/Week_1/boris_bikes/lib/docking_station.rb:20:in `dock_bike'
	from (irb):9
	from /Users/rorymcguinness/.rvm/rubies/ruby-2.2.3/bin/irb:15:in `<main>'
2.2.3 :010 > station.release_bike
 => #<Bike:0x007fe59e1909c0>
2.2.3 :011 > station.dock_bike(bike3)
 => [#<Bike:0x007fe59e188108>, #<Bike:0x007fe59e199278>]
```
