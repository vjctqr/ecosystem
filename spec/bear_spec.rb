require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')


class BearTest < MiniTest::Test

    def setup
        @bear = Bear.new("Care bear", @fish)
        @fish1 = Fish.new("Flounder")
        @fish2 = Fish.new("Dean")
        @fish3 = Fish.new("Steve")
    end


    def test_can_create_bear()
        assert_equal(Bear, @bear.class())
    end

    def test_bear_name()
        assert_equal("Care bear", @bear.name())
    end

    def test_bear_stomach()
        assert_equal(0, @bear.stomach())
    end

    def test_eat_fish()
        @fish.eat(@fish1)
        assert_equal(1, @bear.stomach())


    # def test_fish_to_fish_population()
    #     @river_name1 = River.new("Tyne")
    #     @river_name1.add_to_fish_population(@fish1)
    #     @bear.take_river_fish(@river_name1)
    #     assert_equal(1, @bear.fish_count())
    #     assert_equal(0, river_name1.fish_population_length())
    #  end
        

    
end