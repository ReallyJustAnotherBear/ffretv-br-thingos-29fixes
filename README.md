Whats is ffretv-myththangos?
Whats the references to the name?

FFRETV is  a project of mine based of mythtv, thangos is a further customized project based off THingOS.

Furthermore, mythtv is based of qt/ffmpeg/mysql, and ThingOS is based off Buildroot. I have to say, using Thingos sure helped me not re-invent the wheel. I guess I'm going to have to break down and donate to CC to show my support for his continued efforts.

It's the great fun world of software develoment that even a non-pro like myself gets to play with.



### Currently it works only with a RPI/RPI2/RPI3 using the legacy graphics driver stack ### 
### RPI4 with (fkms/VC4 Mesa “V3D”) will be done after RPI/RPI2/RPI3 brcm testing is complete. ###
 
 
 *I'm working to get the RPI/0 going now, but even 720p performance is unacceptable still.
 
 
*Note the default output resolution is set to 720p and works well with opengl osd. If you need 1080 you may need to
use softblend as I have seen it work better under high loads where opengl/threaded would produce jerky playback.
So while opengl looks best with the OSD it does not work well with h264 avc @ 1080 in my testing.*



Minimalist testing and streamlining.  This project only needs a very narrow feature set compared to upstream. I have started trimming internally by removing webkit support and more. I also test by using custom configuration changes to see what is most effective. Tuning ffmpeg specifically has returned good results. I considered jumping to uclibc/musl directly but then I stepped back and considered most of my excess bit weight/bloat is application resident already. So I decided to save the glibc alternatives for later and focus on reducing ffretv/mythtv further. I have plenty of places to work on. Eg. The devs upstream organized mythtv driver support considerably in the past few years, so that will make the work easy to go in and remove al carte. However, some older drivers appear to be hard coded into mythtv and those will take longer to remove. I have considered removing the whole metadata module as well but it has been delicately interwoven more and more in the past decade, so that will likely be a lot harder than webkit for me to extract cleanly.
