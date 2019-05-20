class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  def readable_format
    self.appointment_datetime.strftime("%B %-d, %y at %H:%M")
  end
end
