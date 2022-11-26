#include "duration.hpp"
#include <assert.h>


//If no argument is given set time to 0
Duration::Duration(){
    time = 0;
}

Duration::Duration(int t){
    assert(t >= 0);
    time = t;
}

int Duration::GetDuration(){
    return time;
}

//If no argument is given return only increment time once.
bool Duration::Tick(){
    time++;

    return CheckAndUpdateAlarm();
}

bool Duration::Tick(int dt){
    assert(dt > 0);
    time += dt;

    return CheckAndUpdateAlarm();
}

void Duration::SetAlarm(int t){
    //Make sure the alarm is set in the future.
    assert(t > time);
    alarm = t;
    alarmHasBeenSet = true;
}

bool Duration::CheckAndUpdateAlarm(){
    //If the alarm has not been set it needs to return false no matter what.
    if(alarmHasBeenSet == false){
        return false;
    }

    /*If the time is the same or larger than the alarm it needs to "ring" that is return true.
      The alarm also needs to be not set anymore.
      Lastly I want the alarm to return true if the time is larger or equal because if the tick is given a value that would make
      make the time larger than the alarm it should still ring (but only for that one tick.)
    */
    if(time >= alarm){
        alarmHasBeenSet = false;
        return true;
    }
    return false;
}

Duration::~Duration() {}