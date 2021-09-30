# profile-loader
Very simple script that just runs every script it finds under `~/.rc-enabled/*`. It is intended to be the user's `~/.profile` or `~/.bashrc`, etc, script.

The idea is that, instead of having a huge `~/.profile`, copying it around and modifying it according to what is relevant on a particular system, you can just separate it out into discreet scripts, plop them into a `~/.rc-available/` directory, and then add symlinks to them under the `~/.rc-enabled/` directory to activate them (or remove symlinks to deactivate).

Inspired by Debian-style management of Apache httpd plugins, the sysvinit system of managing shell scripts that run at boot, and various other similar sorts of mechanisms.
