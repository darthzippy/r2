class CreateReleases < ActiveRecord::Migration
  def self.up
    create_table :releases do |t|
      t.integer :event_id
      t.integer :speaker_id
      t.boolean :original
      t.boolean :record_audio
      t.boolean :record_video
      t.boolean :likeness
      t.boolean :distribute_campus
      t.boolean :distribute_public
      t.boolean :distribute_alumni
      t.string :sponsor
      t.boolean :sponsor_ok

      t.timestamps
    end
  end

  def self.down
    drop_table :releases
  end
end
