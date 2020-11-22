Whats is ffretv-myththangos?
Whats the references to the name?

Q. Firstly you might be wondering why is this still on 29Fixes? 

A. Well I do this by myself and it takes me time to move to a new release even If I wasnt very conservative about it already. It takes me a considerable amount to make further changes without breaking something. Yes I am admitting this is a very fragile setup, i dont that statement will surprise others that have used mythtv and buildroot before. When packages change, things break. My customizations even made it harder to upgrade to later releases as well since automatic merges may not happen.


FFRETV is  a project of mine based of mythtv, thangos is a further customized project based off THingOS.

Furthermore, mythtv is based of qt/ffmpeg/mysql, and ThingOS is based off Buildroot. I have to say, using Thingos sure helped me not re-invent the wheel. After creating this project a while back I made a small  donation to upstream dev for thingos to show my support for his continued efforts.

It's the great fun world of software develoment that even a non-pro like myself gets to play with.


Q.Why so many branches?
A. Random Branches are for ideas. Some all/or/none of parts of ideas may make it into the main dev build.


### Currently it works only with a RPI/RPI2/RPI3 using the legacy graphics driver stack ### 
*note the original rpi can be built but you not going to be getting full framerate mythfront end going easily, needs more power.
*The RPI2 is barely able to manage and its only because of the  hw graphics EGL that it can at all perform acceptably.
*The RPI3 works good when using 720p for wireless and works fair to ok at 1080p on wired.
 **The backend should work on any of these, setting up mythtv on the lower end models will not be fun. I may automate this later with scripts from the
 automyth project.
 ```
 I would like to say the RPI0 will have at least a 720p capable working example but so far it does not look good.
 Combined with the low clock rate on the arm6 and the baggage still present in my ffretv builds, its a low performer still.
 I may have to cut RPi0/1 support completely and require a 4-core as the minimum, 
 I dont feel too bad about doing it either since the "Raspberry Pi 3 Model A+" is a serious replacement,
 though it comes in at least a 2-3x larger size package, but it brings  a lot more performance for that.
```

*Note the default output resolution is set to 720p and works well with opengl osd. If you need 1080 you may need to
use softblend as I have seen it work better under high loads where opengl/threaded would produce jerky playback.
So while opengl looks best with the OSD it does not work well with h264 avc @ 1080 in my testing.*



Minimalist testing and streamlining.  This project only needs a very narrow feature set compared to upstream. I have started trimming internally by removing webkit support and more. I also test by using custom configuration changes to see what is most effective. Tuning ffmpeg specifically has returned good results. I considered jumping to uclibc/musl directly but then I stepped back and considered most of my excess bit weight/bloat is application resident already. So I decided to save the glibc alternatives for later and focus on reducing ffretv/mythtv further. I have plenty of places to work on. Eg. The devs upstream organized mythtv driver support considerably in the past few years, so that will make the work easy to go in and remove al carte. However, some older drivers appear to be hard coded into mythtv and those will take longer to remove. 
