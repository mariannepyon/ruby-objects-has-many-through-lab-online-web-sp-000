require 'pry'
class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
      appointments.map {|appointment| appointment.doctor}
  end

  def self.all
    @@all
  end
end
