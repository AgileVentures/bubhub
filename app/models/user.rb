class User < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email
  validates_uniqueness_of :email, :case_sensitive => false
  validates_presence_of :pin
  validates_presence_of :bu_id
  validates_uniqueness_of :bu_id

  #attr_accessible :assigned_bike, :total_ride_time, :total_number_of_rides

  has_one :assigned_bike

  has_one :total_ride_time

  has_one :total_number_of_rides

end
