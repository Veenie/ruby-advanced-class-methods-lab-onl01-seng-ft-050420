class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end
  
  def save
    self.class.all << self
  end

  def self.destroy_all
    self.all.clear
  end
  
  def self.create
    song = self.new
    self.all << song
    song
  end
  
  self.new_by_nme
    
  
  
end