class CreateTodos < ActiveRecord::Migration
  def self.up
    create_table :todos do |t|
      t.integer :event_id
      t.integer :user_id
      t.string :action
      t.datetime :due

      t.timestamps
    end
  end

  def self.down
    drop_table :todos
  end
end
