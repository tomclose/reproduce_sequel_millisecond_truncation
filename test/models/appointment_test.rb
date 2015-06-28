require 'test_helper'

class AppointmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "date_times don't change on reload" do
    apt1 = Appointment.create(start_time: DateTime.now, end_time: DateTime.now + 1.hour)

    apt2 = Appointment[apt1.id]

    puts "created_at: #{apt1.created_at.to_f} == #{apt2.created_at.to_f}? #{apt1.created_at == apt2.created_at}"
    assert apt1.created_at == apt2.created_at

    puts "updated_at: #{apt1.updated_at.to_f} == #{apt2.updated_at.to_f}? #{apt1.updated_at == apt2.updated_at}"
    assert apt1.updated_at == apt2.updated_at

    puts "start_time: #{apt1.start_time.to_f} == #{apt2.start_time.to_f}? #{apt1.start_time == apt2.start_time}"
    assert apt1.start_time == apt2.start_time

    puts "end_time: #{apt1.end_time.to_f} == #{apt2.end_time.to_f}? #{apt1.end_time == apt2.end_time}"
    assert apt1.end_time == apt2.end_time
  end
end
