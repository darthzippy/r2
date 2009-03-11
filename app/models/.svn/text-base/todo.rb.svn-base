class Todo < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  
  validates_presence_of :action, :on => :create, :message => "can't be blank"
  
  named_scope :completed, :include => :event, :conditions => { 'todos.complete' => '1' }
  named_scope :incomplete, :include => :event, :conditions => { 'todos.complete' => '0' }
  
end
