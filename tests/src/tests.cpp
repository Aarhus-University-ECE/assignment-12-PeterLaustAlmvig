#define CATCH_CONFIG_MAIN // This tells Catch to provide a main() - only do this in one cpp file
#include "catch.hpp"
#include "duration.hpp"

TEST_CASE("GetDuration"){
    Duration d1;
    Duration d2 = Duration(5);
    Duration d3 = Duration(10);

    REQUIRE(d1.GetDuration() == 0);
    REQUIRE(d2.GetDuration() == 5);
    REQUIRE(d3.GetDuration() == 10);
}

TEST_CASE("Tick"){
    Duration d1;
    Duration d2;
    Duration d3;

    d1.Tick();
    d2.Tick(1);
    d3.Tick(10);

    REQUIRE(d1.GetDuration() == 1);
    REQUIRE(d2.GetDuration() == 1);
    REQUIRE(d3.GetDuration() == 10);
}

TEST_CASE("SetAlarm"){
    Duration d1;
    Duration d2;
    Duration d3;

    d1.SetAlarm(2);
    d2.SetAlarm(3);
    d3.SetAlarm(5);

    //Different alarms return true at different times. And returns false in the next tick.
    REQUIRE_FALSE(d1.Tick());
    REQUIRE_FALSE(d2.Tick());
    REQUIRE_FALSE(d3.Tick());
    
    REQUIRE(d1.Tick());
    REQUIRE_FALSE(d2.Tick());
    REQUIRE_FALSE(d3.Tick());

    REQUIRE_FALSE(d1.Tick());
    REQUIRE(d2.Tick());
    REQUIRE_FALSE(d3.Tick());

    //Check that it also returns true when you overshoot the alarm time with tick.
    REQUIRE(d3.Tick(15));

    //It should only return true once.
    REQUIRE_FALSE(d3.Tick());

}

// See Catch2's documentation: https://github.com/catchorg/Catch2/blob/devel/docs/tutorial.md#scaling-up

// Add your test cases. Dont forget to include header file. 