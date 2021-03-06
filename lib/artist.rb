require 'pry'
class Artist

attr_accessor :name, :songs 

@@all = []

def initialize(name)
    @name = name 
    @@all << self 
    @songs = []
end

def self.all 
    @@all  
end    
 

def add_song(song)
    @songs << song
    song.artist = self 
end     


def self.find_or_create_by_name(name)
    if @@all.select {|artist| artist.name == name} == []
        self.new(name)
    else 
        @@all.select {|artist| artist.name == name}.first
    end 
end 


def print_songs 
    songs.each {|song| puts song.name}
end     




end 