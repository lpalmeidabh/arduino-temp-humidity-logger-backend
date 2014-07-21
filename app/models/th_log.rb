class ThLog < ActiveRecord::Base
	attr_accessible :id, :temperature_celsius, :temperature_fahrenheit, :humidity, :heat_index_celsius, :heat_index_fahrenheit
end
