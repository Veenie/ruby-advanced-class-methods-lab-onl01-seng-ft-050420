class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end
  
  def self.create
    song = self.new
    self.all << song
    song
  end
  
  def save
    self.class.all << self
  end

  def self.destroy_all
    self.all.clear
  end
  
  def initialize(song)
    @song = song
  end
  
  def self.new_by_name(name)
    self.all.find{|person| person.name == name}
  end
  
  
end