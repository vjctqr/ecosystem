require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river.rb')
require_relative('../fish.rb')

class RiverTest < MiniTest::Test
    
    def setup
        @river_name = River.new("Tyne")
        @fish1 = Fish.new("Flounder")
        @fish2 = Fish.new("Dory")
    end

    def test_river_name()
        assert_equal("Tyne", @river_name.name)
    end

    def test_fish_population_empty()
        assert_equal(0, @river_name.fish_population_length())
    end

    # def test_add_fish_to_fish_population()
    #     @river_name.add_to_fish_population(@fish1)
    #     assert_equal(1, @river_stop.fish_population_length())
    # end

    def test_add_many_fish_to_fish_population()
        @river_name.add_to_fish_population(@fish1)
        @river_name.add_to_fish_population(@fish2)
        assert_equal(2, @river_name.fish_population_length())
    end


    # def test_can_create_river_name()
    #     assert_equal(River, @river_name.class())
    # end

    # def test_river_name()
    #     assert_equal("Tyne", @river.name())
    # end

    # def test_no_fish()
    #     assert_equal(0, @river.fish_count())
    # end

    # def test_add_one_fish()
    #     @river.add_fish(@fish1)
    #     assert_equal(1, @river.fish_count())
    # end

end