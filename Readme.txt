BTV2iPod
v0.1 2009-09-08
Copyright 2009 Bob Menke

Description:
Transcodes TV shows recorded in Snapstream BeyondTV into iPhone/iPod Touch compatible video files, complete with metadata and iTunes syncing.

Installation:
(1) Make sure folder and BeyondTV server names are correct in BTV2iPod.bat
(2) Create shortcut to BTV2iPod.bat in Windows Send To menu

Use:
(1) Right click any video file, select Send To > BTV2iPod
(2) After transcoding operation is complete, watch the file be auto-magically added to iTunes, and available on iPhone/iPod Touch after next sync

The files in this package:
BTV2iPod.bat           - the main executable
BTV2iPod_MetaData.vbs  - extracts metadata from BTV, then attaches metadata to transcoded video file (to be imported into iTunes)
iTunesImport.vbs       - adds file to iTunes playlist
AtomicParsley.exe      - metadata loader compatible with iTunes
BTVMetaData.exe        - metadata extracter for BeyondTV
BeyondTVLibrary.dll    - support file for BTVMetaData.exe
ffmpeg.exe             - video transcoder
Readme.txt             - this document

Atomic Parsley is distributed under the GNU GPLv2:
Name:       AtomicParsley.exe
Version:    0.9
Homepage:   http://atomicparsley.sourceforge.net/
License:    GNU General Public License
Atomic Parsley source code is maintained and distributed through the SourceForge.net website.

FFmpeg is distributed under the GNU LGPLv2.1:
Name:       FFmpeg.exe
Version:    SVN-r16573  
Homepage:   http://www.ffmpeg.org/
License:    GNU Lesser General Public License
FFmpeg source code is maintained and distributed through the FFmpeg website.

BTVMetaData is distributed under the Public Domain license:
Name:       BTVMetaData.exe, BeyondTVLibrary.dll
Version:    20080404
Homepage:   http://forums.snapstream.com/vb/beyond-tv-downloads/44564-addon-btv-command-line-tools.html
License:    Public Domain
BTVMetaData source code is maintained and distributed through the Snapstream Forums website.


The latest version of this program can always be found at:
http://github.com/bobbo33/BTV2iPod