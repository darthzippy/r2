class Speaker < ActiveRecord::Base
  has_many :releases
  has_many :events, :through => :releases

  validates_presence_of :name, :on => :create, :message => "can't be blank"
end
