class Doctor < ApplicationRecord
  validates_presence_of :name, :degree, :fee, :visit_time
end
