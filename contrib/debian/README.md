
Debian
====================
This directory contains files used to package ellid/elli-qt
for Debian-based Linux systems. If you compile ellid/elli-qt yourself, there are some useful files here.

## elli: URI support ##


elli-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install elli-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your elliqt binary to `/usr/bin`
and the `../../share/pixmaps/elli128.png` to `/usr/share/pixmaps`

elli-qt.protocol (KDE)

