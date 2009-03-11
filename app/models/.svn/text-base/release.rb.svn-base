class Release < ActiveRecord::Base
  belongs_to :event
  belongs_to :speaker
  
  validates_presence_of :speaker_id, :on => :create, :message => "can't be blank"
  
  def speaker_name
    speaker.name if speaker
  end
  
  def speaker_name=(name)
    self.speaker = Speaker.find_or_create_by_name(name) unless name.blank?
  end

end
