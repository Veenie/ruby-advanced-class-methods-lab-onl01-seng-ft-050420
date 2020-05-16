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
  
  def self.new_by_name(title)
    song = self.new
    song.name = title
    song
  end
  
  def self.create_by_name(title)
    song = self.create
    song.name = title
    song
  end
  
  def self.find_by_name(name)
    @@all.find{|i| i.name == name}
  end
  
    def self.find_or_create_by_name(title)
    term = self.find_by_name(title)
    if term
      term
    else
      self.create_by_name(title)
    end
  end
  
  def self.alphabetical
    abc = self.all.sort_by {|song| song.name}
    abc
  end
  
  
  
end