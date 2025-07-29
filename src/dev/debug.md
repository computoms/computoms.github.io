# 1. Debugging tools

This article aims at summarizing all the tools used for debugging a web application or computer application.

[TOC]

## 1.1. Networking

###  1.1.1. DNS

1. `nslookup` ([Windows](https://learn.microsoft.com/fr-fr/windows-server/administration/windows-commands/nslookup) / [Linux](https://linux.die.net/man/1/nslookup)) allows to get information about DNS records. 
2. `dig` [Linux](https://linux.die.net/man/1/dig) a more advanced debugging tool, often pre-installed on Linux.
3. `dog` [Linux](https://github.com/ogham/dog) is a simple but powerful alternative to `dig` for DNS lookups.

### 1.1.2. Packet route analysis 

1. `traceroute` [Linux](https://linux.die.net/man/8/traceroute) can trace a packet through its different hops on the WAN network. Uses the packet TTL (incremented one by one) to get this info.
2. `tracert` [Windows](https://learn.microsoft.com/fr-fr/windows-server/administration/windows-commands/tracert) Windows equivalent of traceroute
3. `mtr` [Linux](https://linux.die.net/man/8/mtr) Powerful linux diagnostic tool. It combines `traceroute` and `ping`

### 1.1.3. Host accessibility

1. `ping` [Linux](https://linux.die.net/man/8/ping) / [Windows](https://learn.microsoft.com/fr-fr/windows-server/administration/windows-commands/ping)
2. `gping` [Linux](https://manpages.debian.org/testing/gping/gping.1.en.html) is a graphical and multitarget alternative to `ping`.

### 1.1.4. IP host configuration

1. `ip` ([Linux](https://linux.die.net/man/8/ip))
2. `ipconfig` [Windows](https://learn.microsoft.com/fr-fr/windows-server/administration/windows-commands/ipconfig)

### 1.1.5. Low-level packet analysis

1. `tshark` [command-line](https://www.wireshark.org/docs/man-pages/tshark.html)
2. `WireShark` [GUI](https://www.wireshark.org/)

## 1.2. Operating-system informations

### 1.2.1. Linux

_Some of these tools are taken from Michael Hausenblas's [Learning Modern Linux](https://modern-linux.info/) excellent book_.

#### 1.2.1.1. System info

``` { .bash }
cat /etc/*-release  # Get info about distribution
cat /proc/version   # Get info about Linux release (kernel)
uname -a            # Print all information related to the system
```

#### 1.2.1.2. Hardware info

``` { .bash }
cat /proc/cpuinfo
cat /proc/meminfo
cat /proc/diskstats
sudo dmidecode -t bios
```

#### 1.2.1.3. RAM, Users, Processes

- RAM installed and free portion: `free -ht`
- Connected users on the system: `w`
- System metrics of a user `[USER]` (CPU load, ...): `top -U [USER]`
- List all processes: `ps faux`
- Find a particular process: `ps -e | grep [process]`

#### 1.2.1.4. File info

- File details: `stat [filename]`
- Path to command: `which [cmd]`
- Find file: `find /path -name "*.ext"` or in combination with `grep`: `find . -type f -exec grep -H NAME {};`
- Create test file: `dd if=/dev/zero of=testfile.dat bs=1024 count=1000` (creates a 1kB file with only zeros)

#### 1.2.1.5. Redirections and pipes

- `stdout`: `command 1> file` or `command > file`
- `stderr`: `command 2> file`
- `stdout` and `stderr` combined: `command &> file` or `command >file 2&>1`
- Drop output: `command > /dev/null`
- `stdin`: `command < file`

#### 1.2.1.6 System performance

- Artificially generate CPU load: `yes | tr \\n x | head -c 450m | grep z`
- Disk space for user: `du -h /home`
- Free disk space: `df -h`
- Load test of a hard disk: `dd if=/dev/zero of=/path/to/disk bs=1G count=1 oflag=direct`


## 1.3. Command-line tools

### 1.3.1. Linux

- See list of modern command-line tools for Unix-based systems on [ibraheemdev GitHub's page](https://github.com/ibraheemdev/modern-unix)