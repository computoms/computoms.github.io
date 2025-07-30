---
title: 'Linux in-depth resources'
date: 2025-07-30
---

Here are a list of resources to dig the Linux subject.

[TOC]

_Most of these resources are taken from [Learning Modern Linux](/books/learning-modern-linux.html)_.

# 1. The Linux/Unix Story

- [The Birth of UNIX](https://corecursive.com/brian-kernighan-unix-bell-labs1/)

# 2. The Linux Kernel

## 2.1. Kernel

- [Linux Kernel Teaching](https://linux-kernel-labs.github.io/refs/heads/master/lectures/intro.html)
- [Anatomy of the Linux Kernel](https://developer.ibm.com/articles/l-linux-kernel/)
- [Operating Systems Kernels](https://www.cs.cornell.edu/courses/cs614/2007fa/Slides/kernel%20architectures.pdf)
- [KernelNeybies](https://kernelnewbies.org/)
- [kernelstats](https://github.com/udoprog/kernelstats)
- [The Linux Kernel Map](https://makelinux.github.io/kernel/map/)

## 2.2. Memory management

- [Understanding the Linux Virtual Memory Manager](https://www.kernel.org/doc/gorman/pdf/understand.pdf)
- [The Slab Allocator in the Linux Kernel](https://hammertux.github.io/slab-allocator)
- [Linux Kernel Documentation](https://www.kernel.org/doc/html/latest/admin-guide/mm/index.html)

## 2.3. Device Drivers

- [How to install a device driver on Linux](https://opensource.com/article/18/11/how-install-device-driver-linux)
- [Character device drivers](https://linux-kernel-labs.github.io/refs/heads/master/labs/device_drivers.html)
- [Linux Device Drivers: Tutorial for Linux Driver Development](https://www.apriorit.com/dev-blog/195-simple-driver-for-linux-os)

## 2.4. Syscalls

- [Linux Interrupts: The Basic Concepts](https://www.cs.montana.edu/courses/spring2005/518/Hypertextbook/jim/media/interrupts_on_linux.pdf)
- [System Calls](https://linux-kernel-labs.github.io/refs/heads/master/lectures/syscalls.html)
- [Linux syscalls table](https://faculty.nps.edu/cseagle/assembly/sys_call.html)
- [Syscalls.h source code](https://elixir.bootlin.com/linux/v6.16/source/include/linux/syscalls.h)
- [eBPF cards documentation](https://prototype-kernel.readthedocs.io/en/latest/bpf/ebpf_maps.html)

# 3. The Linux Shell

## 3.1. TTL terminals

- [Anatomy of a Terminal Emulator](https://poor.dev/blog/terminal-anatomy/)
- [The TTY Demystified](https://www.linusakesson.net/programming/tty/)
- [The Terminal, the Console and the Shell -- What are they?](https://unixdigest.com/articles/the-terminal-the-console-and-the-shell-what-are-they.html)
- [What is a TTY on Linux](https://www.howtogeek.com/428174/what-is-a-tty-on-linux-and-how-to-use-the-tty-command/)
- [Your Terminal is not a Terminal: An Introduction to Streams](https://lucasfcosta.com/2019/04/07/streams-introduction.html)

## 3.2. Shells

- [Unix Shells: bash, Fish, ksh, tcsh, zsh](https://hyperpolyglot.org/unix-shells)
- [Comparison of Command Shells](https://en.wikipedia.org/wiki/Comparison_of_command_shells)
- [bash vs zsh](https://www.reddit.com/r/linux/comments/1csl7c/bash_vs_zsh/)
- [Ghost in the Shell](https://vermaden.wordpress.com/2021/09/19/ghost-in-the-shell-part-7-zsh-setup/)

## 3.3. Multiplexers -- tmux

- [A tmux Crash Course](https://thoughtbot.com/blog/a-tmux-crash-course)
- [A Quick and Easy Guide to tmux](https://hamvocke.com/blog/a-quick-and-easy-guide-to-tmux/)
- [How to Use tmux on Linux](https://www.howtogeek.com/671422/how-to-use-tmux-on-linux-and-why-its-better-than-screen/)
- [tmux 2: Productive Mouse-Free Development](https://pragprog.com/titles/bhtmux2/tmux-2/)
- [Tips and tricks for tmux](https://tmuxcheatsheet.com/)

# 4. Access control

- [A Survey of Access Control Policies](https://www.cs.umd.edu/sites/default/files/scholarly_papers/ACrowell_1.pdf)
- [Linux Capabilities in Practice](https://blog.container-solutions.com/linux-capabilities-in-practice)
- [Linux Capabilites: Making Them Work](https://www.kernel.org/doc/ols/2008/ols2008v1-pages-163-172.pdf)
- [A seccomp Overview](https://lwn.net/Articles/656307/)
- [Sandboxing in Linux with zero Lines of Code](https://blog.cloudflare.com/sandboxing-in-linux-with-zero-lines-of-code/)
- [POSIX Access control Lists on Linux](https://www.usenix.org/legacy/publications/library/proceedings/usenix03/tech/freenix03/full_papers/gruenbacher/gruenbacher_html/main.html)
- [An Introduction to Linux Access Control Lists (RedHat)](https://www.redhat.com/en/blog/linux-access-control-lists)

# 5. Filesystems


- [UNIX filesystems basics](https://www.oakton.edu/user/2/rjtaylor/CIS228/Slide/UNIX%20File%20Systems%202.pdf)
- [Overview of the Linux Virtual File System](https://www.kernel.org/doc/html/latest/filesystems/vfs.html)
- [Introduction to Linux Virtual File Systems](https://www.starlab.io/blog/introduction-to-the-linux-virtual-filesystem-vfs-part-i-a-high-level-tour)
- [How to use LVM GUI](https://www.linuxjournal.com/content/review-gui-lvm-tools)
- [File systems hierarchy on Linux](https://tldp.org/LDP/Linux-Filesystem-Hierarchy/Linux-Filesystem-Hierarchy.pdf)
- [Filesystem efficiency: ext4, xfs, btrfs and zfs compared](https://www.reddit.com/r/DataHoarder/comments/f5uzv8/filesystem_efficiancy_comparision_of_ext4_xfs/)
- [Kernel Korner Unionfs: Bringing Filesystems Together](https://www.linuxjournal.com/article/7714)
- [Starting with btrfs on Linux](https://opensource.com/article/20/11/btrfs-linux)

# 6. Processes and packaging

- [Analyzing the Linux boot process](https://opensource.com/article/18/1/analyzing-linux-boot-process)
- [Linux boot process steps](https://www.crybit.com/linux-boot-process/)
- [Linux Package Management guides](https://www.linode.com/docs/guides/tools-reference/linux-package-management/)

# 7. Networking

## 7.1. TCP/IP stack

- [Understanding Linux Network Internal](https://www.oreilly.com/library/view/understanding-linux-network/0596002556/)

## 7.2. DNS

- [Install and configure a Linux DNS Server](https://www.thegeekstuff.com/2014/01/install-dns-server/)
- [Anatomy of a DNS search on Linux](https://zwischenzugs.com/2018/06/08/anatomy-of-a-linux-dns-lookup-part-i/)
- [TLD - Putting the .fun in the top of the DNS](https://www.netmeister.org/blog/tlds.html)

## 7.3. Application layer

- [SSH tunnels explained](https://goteleport.com/blog/ssh-tunneling-explained/)
- [All about curl](https://curl.se/book.html)
- [Getting started with socat, a multipurpose relay tool for Linux](https://www.redhat.com/en/blog/getting-started-socat)
- [Geomappy network traffic](https://xn--blgg-hra.no/2015/10/geomapping-network-traffic/)

# 8. Observability

- [Linux Performance Analysis in 60,000 Milliseconds](https://netflixtechblog.com/linux-performance-analysis-in-60-000-milliseconds-accc10403c55)

## 8.1. Logging

- [Linux Logging Complete Guide](https://devconnected.com/linux-logging-complete-guide/)
- [UNIX/Linux System Logging](https://www.tutorialspoint.com/unix/unix-system-logging.htm)
- [fluentd](https://www.fluentd.org/)

## 8.2. System Monitoring

- [Monitoring statsd](https://www.sysdig.com/blog/monitoring-statsd-metrics)
- [Linux tracing systems](https://jvns.ca/blog/2017/07/05/linux-tracing-systems/)
- [Profilerpedia: A map of the Software Profiling Ecosystem](https://www.markhansen.co.nz/profilerpedia/)
- [Monitoring Linux host metrics with the Node Explorer](https://prometheus.io/docs/guides/node-exporter/)

# 9. Others

- [RancherOS: a simpler Linux alternative for Docker enthusiasts](https://www.infoworld.com/article/2255121/rancheros-a-simpler-linux-for-docker-lovers.html)
- [Kerberos: authentication procotol](https://web.mit.edu/kerberos/)
- [Functional Linux with NixOS](https://lwn.net/Articles/337677/)
- [How X-Window Managers works](https://jichu4n.com/posts/how-x-window-managers-work-and-how-to-write-one-part-i/)