class Pirate

    attr_accessor :name, :weight, :height
PIRATES = []
    def initialize(arguments)
        @name = arguments[:name]
        @weight = arguments[:weight]
        @height = arguments[:height]
        PIRATES << self
    
    end

    def self.all
        PIRATES

    end



end