class Ship
    attr_reader :name, :type, :booty 

    @@all = []

    def self.all
        @@all
    end

    def initialize(details)
        @name = details[:name]
        @type = details[:type]
        @booty = details[:booty]
        @@all << self
    end

    def self.clear 
        all.clear
    end
end