## About

These are dotfiles/config files to set up systems the way I like it.
I am running on Windows and occasionally on Linux so files are split into two categories.

If you want to give these dotfiles a try, you should first fork this repository, review the code, and remove things you don’t want or need.
Please don’t blindly use my settings unless you know what that entails.

## Windows setup

**Warning**: Please don't use Windows dotfiles in Linux environment, some things will not work (that's the reason I have them split into separate categories).

It's a bit harder to configure am almost identical setup to Linux on Windows but it's possible.

Requirements (stuff I use):
* **Git for Windows** - https://git-scm.com/. Git for Windows provides a BASH emulation used to run Git from the command line. Also includes many Linux utilities ported to work on Windows.

* **ConEmu** - https://conemu.github.io/. ConEmu is a Windows console emulator with tabs, which presents multiple consoles and simple GUI applications as one customizable GUI window with various features.

* **Far Manager** - https://farmanager.com/. Far Manager is a program for managing files and archives in Windows operating systems. Far Manager works in text mode and provides a simple and intuitive interface. If you're familiar with Midnight Commander from Linux world you will not notice a difference.

* **Screeny** - https://github.com/slava23/WinScreenyCmder. WinScreenyCmder is Screenfetch for Windows.

All files necessary to set up a working environment are available in the repository.

![Windows Dotfiles](https://user-images.githubusercontent.com/34814207/34419308-529b63ee-ec03-11e7-98cf-8585f4be08ae.png)

## Windows WSL setup
The Windows Subsystem for Linux lets developers run Linux environments -- including most command-line tools, utilities, and applications -- directly on Windows, unmodified, without the overhead of a virtual machine.

More information: https://docs.microsoft.com/en-us/windows/wsl/about

## Linux setup

Nothing fancy, pretty much standard Debian/Ubuntu installation compatible. I use tmux and split my terminal to have four workspace windows available. Terminal font is "Noto Mono" from Google - https://www.google.com/get/noto/

All files necessary to set up a working environment are available in the repository.

![Linux Dotfiles](https://user-images.githubusercontent.com/34814207/34419366-c81ddf16-ec03-11e7-95d6-8a3f2f66167d.png)

## Feedback
Issues/Suggestions/Improvements are [welcome](https://github.com/maciejgluszek/dotfiles/issues)