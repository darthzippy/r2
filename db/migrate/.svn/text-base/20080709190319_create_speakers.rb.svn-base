class CreateSpeakers < ActiveRecord::Migration
  def self.up
    create_table :speakers do |t|
      t.string :first
      t.string :last
      t.boolean :blanket
      t.datetime :blanket_start
      t.datetime :blanket_end

      t.timestamps
    end
  end

  def self.down
    drop_table :speakers
  end
end
