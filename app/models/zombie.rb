class Zombie < ActiveRecord::Base
  
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_inclusion_of :no_of_arms, :in => 0..2

end
