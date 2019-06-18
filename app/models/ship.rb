class Ship

   attr_accessor :name, :type, :booty
   
   #SHIP
   @@all = []

   def initialize(placeholder)
       @name = placeholder[:name]
       @type = placeholder[:type]
       @booty = placeholder[:booty]
       @@all << self
   end 

   def self.all
      @@all
   end 

   def self.clear 
    @@all.delete
   end   

end