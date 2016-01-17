EarthLiveShell
==============
A [EarthLiveSharp](https://github.com/bitdust/EarthLiveSharp) Linux Shell implementation.

Images from [himawari8](http://himawari8.nict.go.jp) are currently delivered by my Cloudinary CDN. Change `cdn-prefix` in `src/Makefile` to your own CDN account.

Install
-------
Go to `src`, edit `Makefile` if needed, type `make` and `sudo make install`

Requirements
------------
* <s>`imagemagick` for wallpaper generation and tile concatenating.</s>
* `curl` for image and json downloading
* currently gnome only
* and a live Internet connection

Auto-start on login
-------------------
After install, check the `earthlive-shell` for one-click autostart configuration. If you like, you can manually set up autostart by making a symbolic link of `EarthLiveStart.desktop` in `~/.config/autostart`:
```
ln -sf /usr/local/share/applications/EarthLiveStart.desktop ~/.config/autostart/
```