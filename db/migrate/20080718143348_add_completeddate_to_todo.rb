class AddCompleteddateToTodo < ActiveRecord::Migration
  def self.up
    add_column :todos, :completed_date, :datetime
  end

  def self.down
    remove_column :todos, :completed_date
  end
end
