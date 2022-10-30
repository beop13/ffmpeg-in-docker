# ffmpeg-in-docker
Docker image with ffmpeg. With handy script to download list of m3u8 lists.

If you need just image to use ffmpeg, you can do after building image:
```
docker run --rm -it ffmpeg "/bin/bash"
```

There is also handy script that downloads list of files. There is example of <list_to_download.csv>. After you fill the file, just launch 
```
docker-compose -f docker-compose.yml up
```
