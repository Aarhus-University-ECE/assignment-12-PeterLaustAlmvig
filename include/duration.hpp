#ifndef _DURATION_H_ 
#define _DURATION_H_

#include <stdbool.h>

class Duration{
    private:
        int time;
        int alarm;
        bool alarmHasBeenSet;


    public:
        Duration();

        Duration(int t);
        
        ~Duration();

        int GetDuration();

        bool Tick();
        bool Tick(int dt);

        void SetAlarm(int t);
};

#endif