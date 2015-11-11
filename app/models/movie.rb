class Movie < ActiveRecord::Base
  validates :director_id, :presence=> true
  validates :title, :presence=> true, :uniqueness =>{ scope: :year,
    message: "and Year not unique" }
    validates :year, :numericality=>{:only_integer=>true,:greater_than_or_equal_to=>1870, :less_than_or_equal_to=>2050, message: "must be an integer between 1870 and 2050"}
    validates :duration, :numericality=>{:only_integer=>true,:greater_than=>0, :less_than=>2764800, message: "must be an integer between 0 and 2764800"}

  end
