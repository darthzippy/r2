class RemoveFirstFromSpeaker < ActiveRecord::Migration
  def self.up
    remove_column :speakers, :first
    remove_column :speakers, :last
  end

  def self.down
    add_column :speakers, :first, :string
    add_column :speakers, :last, :string
  end
end
