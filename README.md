## 1. 下载msys2 ##

	https://msys2.github.io/
	32位版本为例
	http://repo.msys2.org/distrib/i686/msys2-i686-20160205.exe
	

## 2. msys2安装必要工具 ##

	打开 msys2_shell.bat 如果没有 就运行msys2_shell.cmd
	
	pacman -Syuu  #升级系统 ，多次运行直到提示没有软件需要更新

	pacman -S make pkgconfig git   # 安装需要的软件包 yasm mingw-w64-i686-SDL
							

## 3. 删除link(与vs的link冲突) ##
    rm /usr/bin/link.exe

## 4. 下载FFMPEG源码,并编译 ##
	
- 进入ffmpeg_msvc目录，git clone https://git.ffmpeg.org/ffmpeg.git

- 启动Developer Command Prompt

- 进入msys2安装目录，运行 	msys2_shell.cmd -mingw32 -full-path

- (msys2中)进入ffmpeg_msvc目录  运行 ./build\_lib.sh  


## 5. 编译ffmpeg和ffplay ##
	
	打开msvc_proj/ffmpegvs.sln 进行编译



	
