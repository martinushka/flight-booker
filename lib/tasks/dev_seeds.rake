# frozen_string_literal: true

namespace :dev_seeds do
    desc "Create an example booking for console experiments"
    task generate_booking: :environment do
      earhart_booking = Booking.new
  
      Seat.new(flight: Flight.first, booking: earhart_booking)
      Seat.new(flight: Flight.first, booking: earhart_booking)
      Seat.new(flight: Flight.first, booking: earhart_booking)
      Seat.new(flight: Flight.first, booking: earhart_booking)
  
      Passenger.create!(name: "Amelia Earhart", email: "amelia@earhart.com", booking: earhart_booking)
      Passenger.create!(name: "Maude Bonney", email: "maude@bonney.com", booking: earhart_booking)
      Passenger.create!(name: "Urmila K. Parekh", email: "urmila@parekh.com", booking: earhart_booking)
      Passenger.create!(name: "Hermelinda Urvina", email: "hermelinda@urvina.com", booking: earhart_booking)
    end
  end