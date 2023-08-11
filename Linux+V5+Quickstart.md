## 1. Linux Introduction


## Why Linux?

- OpenSource.
- Community support.
- Heavily customizable.
- Most Servers runs on Linux.
- DevOps most of the tools implements on Linux only.
- Automation
- Secure.

## Architecture of Linux


## Diffrent Linux distros

##### ➔ Popular Desktop Linux OS

- Ubuntu Linux
- Linux Mint
- Arch Linux
- Fedora
- Debian
- OpenSuse

##### ➔ Popular Server Linux OS

- Red Hat Enterprise Linux
- Ubuntu Server
- Centos
- SUSE Enterprise Linux


### Most used Linux distros currently in IT industry.

RPM based:- RHEL & Centos

Debian based :- Ubuntu Server

### Diffrence between RPM based and Debian based.

From user’s point of view, there isn’t much difference in these tools. The RPM and DEB formats

are both just archive files, with some metadata attached to them. They are both equally arcane, have

hardcoded install paths and only differ in subtle details. DEB files are installation files for Debian

based distributions. RPM files are installation files for Red Hat based distributions. Ubuntu is based

on Debian’s package manage based on APT and DPKG. Red Hat, CentOS and Fedora are based on

the old Red Hat Linux package management system, RPM.

DEB or .deb (Debian based softwares)

DEB is the extension of the Debian software package format and the most often used name for such

binary packages. DEB was developed by Bedian.

Example: Google chrome software

Package name: google-chrome-stable_current_amd64.deb

Installation: dpkg -i google-chrome-stable_current_amd64.deb

RPM or .rpm (Red Hat based softwares.)

It is a package management system. The name RPM variously refers to the .rpm file format, files in

this format, software packaged in such files, and the package manager itself. RPM was intended

primarily for Linux distributions; the file format is the baseline package format of the Linux

Standard Base. RPM was developed by Community & Red Hat.

Example: Google chrome software

Package Name: google-chrome-stable-57.0.2987.133-1.x86_64.rpm

Installation: rpm - ivh google-chrome-stable-57.0.2987.133-1.x86_64.rpm

NOTE: You will also encounter diffrent commands, packages and service names while using

both kinds of distros.


## 2. Basic Commands

➔ Open Terminal

➔ Know where you are? Present Working Directory

➔ Create a directory/folder in your home directory.

➔ Change your current working directory to linux-practices(Go to linux-practices

```
folder).
```
➔ Create some more directories and list them **with “ls”** command.

➔ Create some empty files with **“touch” command** and list them.


```
➔ Reconfirm your location in your system.
```
### Absolute path and Relative path

What is a path?

A path is a unique location to a file or a folder in a file system of an OS. A path to a file is

a combination of / and alpha-numeric characters.

What is an absolute path?

An absolute path is defined as the specifying the location of a file or directory from the root

directory(/). In other words we can say absolute path is a complete path from start of actual

filesystem from / directory.

Some examples of absolute path:

/home/imran/linux-practices/

/var/ftp/pub

/etc/samba.smb.conf

/boot/grub/grub.conf

If you see all these paths started from / directory which is a root directory for

every Linux/Unix machines.

What is the relative path?

Relative path is defined as path related to the present working directory(pwd). Suppose I am located

in /home/imran and I want to change directory to /home/imran/linux-practices. I can use relative

path concept to change directory to linux-practices and also devopsdir directory.


If you see all these paths did not start with / directory.

```
➔ Creating directories in devopsdir directory with absolute and relative path.
```
```
➔ Copying files into directory.
```
```
➔ Copying directories from one location to another.
```

➔ Moving files from one location to another.

➔ Removing files and directories.


## VIM EDITOR

```
➔ Install vim editor.
```
```
➔ Open up a file in vim editor
```
```
➔ Hit i to enter into insert mode
```
=> type few lines => hit Esc

=> type :wq

=> Enter.

```
➔ Read file with cat command.
```

```
VIM EDITOR
```
```
VI Visual display editor
VIM Visual display editor improved
```
```
This is command mode editor for files. Other editors in Linux are emacs, gedit
vi editor is most popular
```
```
It has 3 modes:
1 Command Mode
2 Insert mode (edit mode)
3 extended command mode
```
```
Note: When you open the vim editor, it will be in the command mode by default.
```
Command Mode:

```
gg To go to the beginning of the page
G To go to end of the page
w To move the cursor forward, word by word
b To move the cursor backward, word by word
nw To move the cursor forward to n words (SW)
nb To move the cursor backward to n words {SB)
u To undo last change (word)
```
```
u To^ undo^ the^ previous^ changes^ (entire^ line)^
Ctrl+R To redo the changes
VY To^ copy^ a^ line^
nyy To copy n lines (Syy or 4yy)
p To paste line below the cursor position
```
p (^) To paste line above the cursor position
dw To delete the word letter by letter {like Backspace}
X To^ delete^ the^ world^ letter^ by^ letter^ (like^ DEL^ Key)^ I·,
dd To delete entire line \' (^) --
ndd To delete n no. of lines from cursor position{Sdd) ,:::::,-^
<::..

##### I To^ search^ a^ word^ in^ the^ file^ UA^ "(^ _).,^

```
I •. :::., - --
```

Extended Mode: ( Colon Mode)

```
Extended Mode is used for save and quit or save without quit using "Esc" Key with":"
```
Esc+:w To Save the changes (^) j"-', \"" ../
Esc+:q To quit (Without saving) (^) ...--,.. .....
Esc+:wq To save and quit (^) r '\
Esc+:w! To save forcefully (^) /_-·.. \.>-:/
Esc+wq! To save and quit forcefully (^) f_l '\ 7
Esc+:x To save and quit
Esc+:X To give passw or d to the file and r emove password
Esc+:20(n) To go to line no 20 or n
Esc+: se nu To set the line numbers to the file!
Esc+:se nonu To Remove the set line numbers

### Is command options


### Types of files in linux.

### Symbolic links

```
Symbolic links are like desktop shortcuts we use in windows.
```
```
Create a soft link for /var/log directory in our current working directory.
```

### Grep

## 4. Filter & IO redirection command.

```
grep command is used to find texts from any text input.
```
```
Passwd file: stores information about all the users in the
```
```
system
```
➔ Finding line which contains word **as “root”** from /etc/passwd file.

➔ Linux is case sensetive, Root is diffrent that root. Ignoring case in grep with -i option.

➔ To display things except the given word use - v option

### Filter Commands

- less: Displays file content page wise or line

```
wise. Ex: less /etc/passwd
```

- more
- head
- tail


- cut
- sed


### I/O redirection

➔ Create a file named devopstools with below content.

➔ Search for text **“tech” replace it with “tools”** and redirect output to a new file.

➔ Appending another output in same **file with “>>”**.


➔ Redirecting only error to a **file “2>>”.**

➔ Redirecting all the output to a file **“&>>”.**


### Piping

So far we've dealt with sending data to and from files. Now we'll take a look at a
mechanism for sending data from one program to another. It's called piping and the
operator we use is ( | ). What this operator does is feed the output from the program on
the left as input to the program on the right.

### Find


## 5. Users & Groups.

##### USERS

```
Types of user
```
```
TYPE EXAMPLE USER ID (ID) GROUP ID
(GID)
```
```
HOME DIR SHELL
```
```
ROOT root 0 0 /root /bin/bash
```
```
REGULAR imran, vagrant 1000 to 60000 1000 to 60000 /home/username /bin/bash
```
```
SERVICE ftp, ssh,
apache
```
```
1 to 999 1 to 999 /var/ftp etc /sbin/nologi
n
```

### Passwd file

### Group file

2. /etc/group

```
The file /etc/group stores group information. Each line in this file stores one group entry.
```
```
Group name, group password, GID, group members
```

ADD USER, SET PASSWORD & SWITCH TO USER

ADD USER, GROUP & USER INTO GROUP

DELETE USER & GROUP

3. The /etc/shadow file

This file stores users’ password and password related information. Just like /etc/passwd file,
this file also uses an individual line for each entry.

1. Username
2. Encrypted password
3. Number of days when password was last changed
4. Number of days before password can be changed
5. Number of days after password must be changed
6. Number of days before password expiry date to display the warning message


7. Number of days to disable the account after the password expiry
8. Number of days since the account is disabled
9. Reserved field

USER & GROUP cheatsheet

```
COMMANDS DESCRIPTION
```
```
useradd Creates user in RedHat
```
```
adduser Creates user in ubuntu
```
```
id Shows user info
```
```
groupadd Creates group
```
```
usermod - G grpnam usrname Adds user to group
```
```
passwd set/reset password
```
```
userdel - r removes user with home dir
```
```
groupdel removes group
```
```
last shows last login in system
```
```
who who is logged into system
```
```
whoami username
```
##### lsof -u user List files opened by user


## 6. File permissions


#### Changing Permissions - Symbolic Method

- To change access modes:
    o chmod [-OPTION] ... mode[,mode] filel directory ...
- mode includes:
    o u,g or o for user, group and other

#### o + - or = for grant, deny or set

```
o r , w or x for read, write and execute
```
- Options include:
    o - R Recursive
    o - v Verbose
    o --reference Reference another file for its mode
- Examples:
    o chmod ugo+r file: Grant read access to all for file
    o chmod o-wx dir: Deny write and execute to others for dir


#### Changing Permissions - Numeric Method

- Uses a three-digit mode number
    o first digit specifies owner 's permissions
    o second digit specifies group permissions
    o third digit represents others' permissions
- Permissions are calculated by adding:
    o 4 (for read)
    o 2 (for write)
    o 1 (for execute)
- Example:
    o chmod 640 myfile


## 7. Sudo

sudo gives power to a normal user to execute commands which is owned by root user.

Example shown below:

If a user has already full sudoers privilege, it can become a root user anytime.

```
➔ sudo -i changes from normal user to root user
```
```
Note: User imran was already a sudo user with full privilege.
```
```
➔ Adding user sam in sudoers list.
```
```
➔ Like a user a group can also be added into sudoers list.
```

➔ Every time you enter sudo command it asks your own password. To turn that off use

```
NOPASSWD in sudoers file.
```
➔ Changing to any other user **with “su** - **”** command.

➔ Become a root user from sam user login.


## 8. Software Management.

```
➔ Download package from internet.
```
```
For CentOS
```
**To install Tree**
# curl https://rpmfind.net/linux/centos/7.9.2009/os/x86_64/Packages/tree-1.6.0-10.el7.x86_64.rpm -o tree-1.6.0-
10.el7.x86_64.rpm

# rpm -ivh tree-1.6.0-10.el7.x86_64.rpm

To install httpd

# curl https://rpmfind.net/linux/centos/7.9.2009/os/x86_64/Packages/httpd-2.4.6-95.el7.centos.x86_64.rpm -o httpd-
2.4.6-95.el7.centos.x86_64.rpm

# rpm -ivh httpd-2.4.6-95.el7.centos.x86_64.rpm

Due to Dependencies its failing and it will be installed one we install all the dependencies. But what if we have
Hundreds of dependencies, And that can be solved easily by other package managers like YUM.

repos. d/ directory. It reads each YUM Repository configuration file to get the information required to


download and install new software, resolves software dependencies and installs the required RPM package
files. YUM Repository configuration files must: be located in /etc/yum.repos.d

# ls /etc/yum.repos.d/

Shows the usage of YUM Command with options

# yum –help

To Update all your packages

# yum update

To install httpd

# yum install httpd - y


To remove httpd

# yum remove httpd -y

For Ubuntu

# wget [http://archive.ubuntu.com/ubuntu/pool/universe/t/tree/tree_1.7.0-3_amd64.deb](http://archive.ubuntu.com/ubuntu/pool/universe/t/tree/tree_1.7.0-3_amd64.deb) - o tree_1.7.0-
3_amd64.deb

# dpkg -i tree_1.7.0-3_amd64.deb


We have seen YUM Like that for Ubuntu we have a package manager ‘apt’.

The sources. list file is a key factor in adding or upgrading applications to your Ubuntu installation. This is
also used by your system for system updates. The file is basically the roadmap for your system to know where
it may download programs for installation or upgrade.

# cat /etc/apt/sources.list

Shows the usage of apt Command with options
# apt --help


To update all your package lists

#apt update

TO search for a <package> apache2

# apt search apache2

To install apache2

# apt install apache2 - y


To remove apache2

# apt remove apache2 - y

```
Commands Description^
```
```
wget link to download file from
link
```
```
curl link access file from link
```
```
curl link -o
outputfile
```
```
access file and store
o/p to a file
```
```
REDHAT RPM commands^
```
```
rpm -ivh {rpm-file} Install the package rpm -ivh
mozilla-mail-1.7.5- 17
.i586.rpm
rpm -ivh --test
mozilla-mail-1.7.5- 17
.i586.rpm
```
```
rpm -Uvh {rpm-file} Upgrade package rpm -Uvh
mozilla-mail-1.7.6- 12
.i586.rpm
rpm -Uvh --test
mozilla-mail-1.7.6- 12
.i586.rpm
```

```
rpm -ev {package} Erase/remove/ an
installed package
```
```
rpm -ev mozilla-mail
```
```
rpm -ev --nodeps
{package}
```
```
Erase/remove/ an
installed package
without checking for
```
```
rpm -ev --nodeps
mozilla-mail
```
(^) dependencies
rpm -qa Display list all
installed packages
rpm -qa
rpm -qa | less
rpm -qi {package} Display installed
information along
with package version
and short description
rpm -qi mozilla-mail
rpm -qf
{/path/to/file}
Find out what package
a file belongs to
i.e. find what
package owns the file
rpm -qf /etc/passwd
rpm -qf /bin/bash
rpm -qc
{pacakge-name}
Display list of
configuration file(s)
for a package
rpm -qc httpd
rpm -qcf
{/path/to/file}
Display list of
configuration files
for a command
rpm -qcf
/usr/X11R6/bin/xeyes
rpm -qa --last Display list of all
recently installed
RPMs
rpm -qa --last
rpm -qa --last | less
rpm -qpR {.rpm-file}
rpm -qR {package}
Find out what
dependencies a rpm
file has
rpm -qpR
mediawiki-1.4rc1-4.i5
86.rpm
rpm -qR bash

### CentOS_8 Commands

```
DNF
commands
cheatsheet
```
```
https://www.linuxtechi
.com/dnf-command-
examples-rpm-
management-fedora-
linux/
```
```
dnf --help Show the help
```

```
dnf search PACKAGE search from available
repositories
dnf install
PACKAGE -y
```
To install the package (^)
dnf install
httpd -y
To Install httpd
package
dnf install vim -y Installing VIM Editor^
dnf reinstall PACKAGE To reinstall PACKAGE^
dnf remove PACKAGE To remove PACKAGE^
dnf update (^) update all packages
dnf update PACKAGE (^) update only a package
dnf grouplist List all available
Group Packages
dnf groupinstall
"GROUPNAME"
Installs all the
packages in a group
dnf repolist List Enabled dnf
Repositories
dnf clean all Clean dnf^ Cache^
dnf install epel-

###### release

```
Additional package
repository that
provides easy access
to install packages
for commonly used
software.
```

```
dnf history
View History of dnf
```
```
dnf info package name Shows the information
of package like
version, size, source,
repository etc
```
```
YUM Commands
Cheatsheet
```
```
https://access.redhat.
com/sites/default/file
s/attachments/rh_yum_c
heatsheet_1214_jcs_pri
nt-1.pdf
```
(^)
yum –help Shows the help^
yum search PACKAGE Search from
available
repositories
yum install PACKAGE -y To install the
package
yum install httpd -y To install httpd
package
yum install vim -y To install VIM
Editor
yum reinstall PACKAGE To reinstall the
PACKAGE
Yum remove PACKAGE To Remove PACKAGE^
yum update Update all
packages
yum update PACKAGE To Update specific
package
yum grouplist List all available
Group packages
yum groupinstall
“Group Name”
Install all the
packages in a
group


Yum repolist List Enabled YUM
repositories

yum install

epel-release

```
Additional package
repository that
provides easy access
to install packages
for commonly used
software.
```
yum clean all Clean yum cache^

yum history View history of
yum

Yum info PACKAGE NAME

```
Shows the
information of
package like
version, size,
source, repository
etc.
```
### Ubuntu20 Commands

```
apt
commands
cheatsheet
```
```
https://itsfoss.com/ap
t-command-guide/
```
```
apt search PACKAGE search from available
repositories
apt install
PACKAGE -y
```
To Install Packages (^)
apt install apache2 -y To Install apache2^
apt reinstall PACKAGE To reinstall PACKAGE (^)
apt remove PACKAGE To remove PACKAGE^
apt update (^) update all packages
apt update PACKAGE (^) update only a package


```
apt grouplist List all available
Group Packages
```
```
apt groupinstall
"GROUPNAME"
```
```
Installs all the
packages in a group.
```
```
apt repolist List Enabled apt
Repositories
```
```
apt clean all Clean apt^ Cache^
```
```
apt history
View History of apt
```
```
apt show package name Shows the information
of package like
version, size, source,
repository etc
```
(^)


##### 9. SEARCH

##### 10. LOGIN (SSH AND TELNET)

##### 11. FILE TRANSFER


##### 12. DISK USAGE

##### 13. DIRECTORY TRAVERSE

##### 14. SERVICES

Centos8

```
$ sudo systemctl start httpd # Starts httpd on centos
```
```
$ sudo systemctl stop httpd # Stops httpd on centos
```
```
$ sudo systemctl restart httpd # Restart services
```
```
$ sudo systemctl status httpd # shows the current status
```
```
$ sudo systemctl reload httpd # Reload conf
```
```
$ sudo systemctl enable httpd # starts httpd at boot time
```
```
$ sudo systemctl disable httpd # stops httpd at boot time
```

Ubuntu20

```
$ sudo systemctl is-active httpd # shows whether the service is
```
```
active or not
```
```
$ sudo systemctl is-enabled httpd # shows whether the service is
```
```
enabled or not
```
```
$ sudo systemctl start apache2 # Starts apache2 on ubuntu
```
```
$ sudo systemctl stop apache2 # Stops apache2 on ubuntu
```
```
$ sudo systemctl restart apache2 # Restart service
```
```
$ sudo systemctl reload apache2 # Reload conf
```
```
$ sudo systemctl enable apache2 # starts apache2 at boot time
```
```
$ sudo systemctl disable apache2 # stops apache2 at boot time
```
```
$ sudo systemctl is-active apache2 # Shows whether the service is
```
```
active or not
```
```
$ sudo systemctl is-enabled
```
```
apache2
```
```
# Shows whether the service is
```
```
enabled or not
```

##### 15. COMPRESSION / ARCHIVES

##### 16. PROCESS RELATED


##### 17. SYSTEM

##### 18. HARDWARE


##### 19. STATISTICS


