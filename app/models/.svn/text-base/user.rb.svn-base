class User < ActiveRecord::Base
  has_many :todos
  has_many :events, :through => :todos
  
  def fullname
    first + " " + last
  end
  
end
