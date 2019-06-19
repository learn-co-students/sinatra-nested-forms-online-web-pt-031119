class Pirate

    attr_accessor :name, :weight, :height

    #PIRATES
    @@all = []

    def initialize(att_hash)
        @name = att_hash[:name]
        @weight = att_hash[:weight]
        @height = att_hash[:height]
        @@all << self
    end
    
    def self.all
        @@all
    end 
    
end