class Ship
@@all = []

attr_accessor :name, :type, :booty

    def initialize(specs)
        @name = specs[:name]
        @type = specs[:type]
        @booty = specs[:booty]
        @@all << self

    end

    def self.all
        @@all
    end

    def self.clear
        @@all = []
    end



end