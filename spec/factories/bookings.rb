# frozen_string_literal: true
# == Schema Information
#
# Table name: bookings
#
#  id           :bigint           not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  flight_id    :bigint
#  passenger_id :bigint
#
FactoryBot.define do
  factory :booking do
    flight_id { "" }
    passenger_id { "" }
  end
end