EarthLiveShell
==============
A [EarthLiveSharp](https://github.com/bitdust/EarthLiveSharp) Linux Shell implementation.

Install
-------
`make` and `sudo make install`

Requirements
------------
* `imagemagick` for wallpaper generation and tile concatenating.
* `curl` for image and json downloading
* currently gnome only

Auto-start on login
-------------------
After install, make a symbolic link of `EarthLiveStart.desktop` in `~/.config/autostart`:
```
ln -sf /usr/local/share/applications/EarthLiveStart.desktop ~/.config/autostart/
```