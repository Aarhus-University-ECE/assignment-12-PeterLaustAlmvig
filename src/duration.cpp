#include "duration.hpp"
#include <assert.h>

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

bool Duration::Tick(){
    time++;
    return alarmHasBeenSet && time >= alarm;
}

bool Duration::Tick(int dt){
    assert(dt > 0);
    time += dt;

    return alarmHasBeenSet && time >= alarm;
}

void Duration::SetAlarm(int t){
    assert(t > time);
    alarm = t;
    alarmHasBeenSet = true;
}

Duration::~Duration() {}