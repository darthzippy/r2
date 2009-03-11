class Event < ActiveRecord::Base
  has_many :todos
  has_many :users, :through => :todos
 
  has_many :releases
  has_many :speakers, :through => :releases
end
