::[FFmpeg video_stabilization_1_0_portable softy_plug]
@echo off

:again

mkdir out
for %%i in (*.mp4) do (
ffmpeg -i "%%i" -vf vidstabdetect=shakiness=10:accuracy=15 -f null -
ffmpeg -i "%%i" -vf vidstabtransform=smoothing=30:input="transforms.trf" "out/%%~ni.mp4"
)

for %%i in (*.avi) do (
ffmpeg -i "%%i" -vf vidstabdetect=shakiness=10:accuracy=15 -f null -
ffmpeg -i "%%i" -vf vidstabtransform=smoothing=30:input="transforms.trf" "out/%%~ni.avi"
)

for %%i in (*.mkv) do (
ffmpeg -i "%%i" -vf vidstabdetect=shakiness=10:accuracy=15 -f null -
ffmpeg -i "%%i" -vf vidstabtransform=smoothing=30:input="transforms.trf" "out/%%~ni.mkv"
)

for %%i in (*.mov) do (
ffmpeg -i "%%i" -vf vidstabdetect=shakiness=10:accuracy=15 -f null -
ffmpeg -i "%%i" -vf vidstabtransform=smoothing=30:input="transforms.trf" "out/%%~ni.mov"
)

for %%i in (*.wmv) do (
ffmpeg -i "%%i" -vf vidstabdetect=shakiness=10:accuracy=15 -f null -
ffmpeg -i "%%i" -vf vidstabtransform=smoothing=30:input="transforms.trf" "out/%%~ni.wmv"
)

for %%i in (*.flv) do (
ffmpeg -i "%%i" -vf vidstabdetect=shakiness=10:accuracy=15 -f null -
ffmpeg -i "%%i" -vf vidstabtransform=smoothing=30:input="transforms.trf" "out/%%~ni.flv"
)

for %%i in (*.avchd) do (
ffmpeg -i "%%i" -vf vidstabdetect=shakiness=10:accuracy=15 -f null -
ffmpeg -i "%%i" -vf vidstabtransform=smoothing=30:input="transforms.trf" "out/%%~ni.avchd"
)

for %%i in (*.f4v) do (
ffmpeg -i "%%i" -vf vidstabdetect=shakiness=10:accuracy=15 -f null -
ffmpeg -i "%%i" -vf vidstabtransform=smoothing=30:input="transforms.trf" "out/%%~ni.f4v"
)

for %%i in (*.swf) do (
ffmpeg -i "%%i" -vf vidstabdetect=shakiness=10:accuracy=15 -f null -
ffmpeg -i "%%i" -vf vidstabtransform=smoothing=30:input="transforms.trf" "out/%%~ni.swf"
)

for %%i in (*.mpv) do (
ffmpeg -i "%%i" -vf vidstabdetect=shakiness=10:accuracy=15 -f null -
ffmpeg -i "%%i" -vf vidstabtransform=smoothing=30:input="transforms.trf" "out/%%~ni.mpv"
)

for %%i in (*.mpe) do (
ffmpeg -i "%%i" -vf vidstabdetect=shakiness=10:accuracy=15 -f null -
ffmpeg -i "%%i" -vf vidstabtransform=smoothing=30:input="transforms.trf" "out/%%~ni.mpe"
)

for %%i in (*.mp2) do (
ffmpeg -i "%%i" -vf vidstabdetect=shakiness=10:accuracy=15 -f null -
ffmpeg -i "%%i" -vf vidstabtransform=smoothing=30:input="transforms.trf" "out/%%~ni.mp2"
)

for %%i in (*.mpeg) do (
ffmpeg -i "%%i" -vf vidstabdetect=shakiness=10:accuracy=15 -f null -
ffmpeg -i "%%i" -vf vidstabtransform=smoothing=30:input="transforms.trf" "out/%%~ni.mpeg"
)

for %%i in (*.mpg) do (
ffmpeg -i "%%i" -vf vidstabdetect=shakiness=10:accuracy=15 -f null -
ffmpeg -i "%%i" -vf vidstabtransform=smoothing=30:input="transforms.trf" "out/%%~ni.mpg"
)

for %%i in (*.3gp) do (
ffmpeg -i "%%i" -vf vidstabdetect=shakiness=10:accuracy=15 -f null -
ffmpeg -i "%%i" -vf vidstabtransform=smoothing=30:input="transforms.trf" "out/%%~ni.3gp"
)

for %%i in (*.m4v) do (
ffmpeg -i "%%i" -vf vidstabdetect=shakiness=10:accuracy=15 -f null -
ffmpeg -i "%%i" -vf vidstabtransform=smoothing=30:input="transforms.trf" "out/%%~ni.m4v"
)

for %%i in (*.qt) do (
ffmpeg -i "%%i" -vf vidstabdetect=shakiness=10:accuracy=15 -f null -
ffmpeg -i "%%i" -vf vidstabtransform=smoothing=30:input="transforms.trf" "out/%%~ni.mp4"
)

for %%i in (*.mxf) do (
ffmpeg -i "%%i" -vf vidstabdetect=shakiness=10:accuracy=15 -f null -
ffmpeg -i "%%i" -vf vidstabtransform=smoothing=30:input="transforms.trf" "out/%%~ni.mxf"
)

for %%i in (*.raw) do (
ffmpeg -i "%%i" -vf vidstabdetect=shakiness=10:accuracy=15 -f null -
ffmpeg -i "%%i" -vf vidstabtransform=smoothing=30:input="transforms.trf" "out/%%~ni.raw"
)

::[FFmpeg video_stabilization_1_0_portable softy_plug]

if NOT ["%errorlevel%"]==["0"] goto:error
echo [92m%~n1 Done.[0m
shift
if "%~1" == "" goto:end
goto:again
:error

echo [93mError! Video files to stabilize were not found. Check for video files in the folder with the executable .exe file.[0m
pause
exit 0
:end

cls
echo [92mEncoding succesful. This window will close after 10 seconds.[0m
timeout /t 10


::[FFmpeg video_stabilization_1_0_portable softy_plug]
