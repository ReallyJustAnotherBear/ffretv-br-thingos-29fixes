Part of the goal of the "thinfe" branch is to determine the minimals for ATSC OTA broadcast tv recording/playback.
Other projects such as "cmyth" exists I know, but those are very low subsets of mythtv designed for kodi.
The ffretv project is a very exploratory project but intends to keep the core intact: eg. QT(C++/C) with ffmpeg/mysql support.

embedded db exploration example for a different future branch
```
Another project goal is to play with mysql embedded for mythtv and see if it can be used a replacement for
the full mysql/maria/oracle db in certain cases. Eg. Is is feasable to have it all minimized and embedded into 
the application directly part of the QT build. The idea is; since the broadcast EIT content it is going 
to be limited anyway(generally a few days at best), so trim back the duration of storage to not include
all of EIT history beyond a certain point, but yet do include mini reference.
```
