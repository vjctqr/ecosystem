class Bear
    attr_reader :name, :fish_population

    def initialize(name)
        @name = name
        @stomach = []
    end

    def 

    def empty()
        @fishes.clear()
    end

    def take_river_fish(river)
        for fish in river.fish_population()
            take(fish)
        end
    end
        

end