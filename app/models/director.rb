class Director < ActiveRecord::Base
  validates :name, :presence=> true
  validates :name, uniqueness: { scope: :dob,
    message: "and Dob not unique" }
  end
