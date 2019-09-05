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

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

  def doctors

    binding.pry
      appointments.map {|appointment| appointment.doctor}
  end

  def self.all
    @@all
  end
end
