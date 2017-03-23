## What are some of the key design philosophies of the Linux operating system?

The key philosophy is that it never assumes that the user is incompetant and does not try to hide everything away the way Windows or Mac OS does. Instead, it assumes the user is computer literate and allows them to do anything it wants and gives a lot of power to the user.

The nine major tenets are:
* Small is Beautiful
* Each Program Does One Thing Well
* Prototype as Soon as Possible
* Choose Portability Over Efficiency
* Store Data in Flat Text Files
* Use Software Leverage
* Use Shell Scripts to Increase Leverage and Portability
* Avoid Captive User Interfaces
* Make Every Program a Filter

## In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

A VPS is a a walled off partition of a server that you can essentially rent from a hosting comany. It can run its own copy of an OS and lets the user install just about any software that runs on it. The advantages of it is that it is of a lower cost than trying to run your own server, but still having a lot of control over it.


## Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system

According to a user on askubuntu.com:

It defeats the security model that's been in place for years. Applications are meant to be run with non-administrative security (or as mere mortals) so you have to elevate their privileges to modify the underlying system. For example you wouldn't want that recent crash of Rhythmbox to wipe out your entire $HOME/Music directory due to a bug. Or that vulnerability that was just posted in ProFTPD to allow an attacker to gain a ROOT shell.

Its just good practice on any operating system to run your applications on a user level and leave administrative tasks to the root user, and only on a per-need basis.