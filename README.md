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


