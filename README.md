# Windows Setup

This is my basic setup for Windows 7 at work. Unfortunately, I am forced to use Windows
due to enterprisey standards and licensing agreements. But thanks to open source software,
I can make it a tolerable experience. Here's how I do it.

## Tools to install

* Git
* Git Bash https://git-scm.com/downloads
* Emacs for Windows

## Remapping the Caps Lock to Ctrl

As an Emacs user, I make heavy use of the Ctrl key. It's unnatural where it is
so I remap it to the Caps Lock key. Some people like remapping Ctrl to Caps Lock
but I find there is no real need for a Caps Lock key.

### Pok3r Remap of Caps Lock

For my keyboard of choice, the Vortex Pok3r, you can do the remap by programming
one of the non-default layers. The default layer is not programmable.

This works great if I am sitting at my desk typing on my Pok3r. However, I often
have to undock my laptop and work off the laptop keyboard. In this case, I need
to have the Caps Lock remapped at the Windows level.

### Windows 7 Remap of Caps Lock

* Run regedit.exe
* Drill down to [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout]
* Add a new Binary value here named "Scancode Map"
* Set the value of Scancode Map to:

```
00 00 00 00 00 00 00 00
02 00 00 00 1d 00 3a 00
00 00 00 00
```

If you really want to swap Caps Lock and Left Ctrl, set the Scancode Map to:

```
00 00 00 00 00 00 00 00
03 00 00 00 1d 00 3a 00
3a 00 1d 00 00 00 00 00
```

## Fonts

I am always playing around with fonts but I've settled on Inconsolata as my
favorite font for terminal and text editor. You can download it from
the official Github repo at https://github.com/google/fonts/tree/master/ofl/inconsolata.

*** References: ***

* https://www.emacswiki.org/emacs/MovingTheCtrlKey#toc19
* https://sites.google.com/site/steveyegge2/effective-emacs
* https://github.com/google/fonts/tree/master/ofl/inconsolata




