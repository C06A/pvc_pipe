# PVC pipe mount

This project was based on [one project](https://www.youtube.com/watch?v=AEnnYVRVI7I)
in [iQLess Youtube channel](https://www.youtube.com/results?search_query=iqless).
The host Patrick Bailey published his code for this project as
[GitHub Gist](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqa25jWkRoVng3SVV1N2dWa1JQOGd5NmNBaE43QXxBQ3Jtc0tsd2wxazJ5a1lSem1FTTZYSnBTNXR0UnJNRkN6WnFlRDQtVE83SmRFN0VSQjFwZXFNSjRibHVsaVIwb0ZwVTFYemNyMzE3RGpsal9iM1QzZVhNazl3ZDdDNDNMN2VKSExLNm83bmw1TnRDb3hyVzJCcw&q=https%3A%2F%2Fgist.github.com%2Fpatmandenver%2Fd5650d0c92ad87ad29be95a391b8ad41).

The published code is working and allows to 3DPrint the mount.
However, Patrick developed this code as a single stream of function calls, which makes the project more difficult
to maintain. Also he stated that resulting code is not as flexible as he would want.

I decided to rearrange his code into a simple project, better organized as a pieces of software.
This would make code more easy to read and maintain.
Also, if I have time, I may rework it to be more flexible and configurable.

I am using IntelliJ IDEA as development environment with Open SCAD plugin. The project organized as Gradle project,
but so far it is just to follow common project structure. Gradle is not helpful in Open SCAD development for now.

This project in GIT will include multiple branches for different purpose:

- "[restructuring](https://github.com/C06A/pvc_pipe/blob/restructuring/src/main/openscad/pvc_pipe.scad)"
  branch includes original code by Patrick Bailey and re-organized version
- "[topdown](https://github.com/C06A/pvc_pipe/blob/topdown/src/main/openscad/pvc_pipe.scad)"
  branch includes steps to develop top-down
  
