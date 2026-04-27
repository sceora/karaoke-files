
@ECHO OFF

FOR %%f IN (*.wav) DO (
echo Converting: %%f
ffmpeg -i "%%f" -ar 44100 -ab 320k -map_metadata 0 "%%~nf.mp3"
)