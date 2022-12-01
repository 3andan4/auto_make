# Auto Makefile for C/C++ projects
## By: 3andan4 - Tek 2

## Install
```bash
git clone https://github.com/3andan4/auto_make ~/.auto_make
sudo ln -s ~/.auto_make/auto_makefile /usr/bin/Make_auto
```

## Effect
- Create a Makefile
- For each lib folder:
  - Create a Makefile
  - Create a header

> **Note**: The Makefile will be created in the current directory and all libraries will be included in make instructions.

> **Note**: A mandatory lib.h file will be created in the include folder.

> **Note**: Include folder will be created if it doesn't exist.

> **Note**: Existing Makefile will be overwritten, as well as existing lib.h file, or any other file in the include folder with the same name as a library folder.

> > **Note**: If you want to keep your Makefile, you can rename it to Makefile.bak before running the command.

> > **Note**: Some behavior are still unexpected. This is a personal tool, so use it at your own risk.