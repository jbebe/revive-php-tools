# Revive the Personal Home Page Tools

## Alternative names

* PHP 1.0
* Personal Home Page Tools
* PHP Tools
* PHP Forms Interpreter
* PHP/FI

## Timeline

* Debian GNU/Linux 0.91 announcement: 1994 January [link](https://www.debian.org/doc/manuals/project-history/ch-releases.en.html)
* PHP Tools announcement: 1995 June 8, Thursday @ 9:00:00 AM UTC+2 [link](https://groups.google.com/forum/#!msg/comp.infosystems.www.authoring.cgi/PyJ25gZ6z7A/M9FkTUVDfcwJ)

## Prerequisites

 * `sudo apt-get install qemu-system-x86 qemu-utils`

## Help

* Install Debian 0.91 on QEMU [link](https://blog.quickmediasolutions.com/2016/08/23/running-debian-0-91-in-qemu.html)
* Old Debian distros [link](http://www.oldlinux.org/Linux.old/distributions/debian/)
* PHP/FI 
    https://www.php.net/manual/phpfi2.php 
    http://obswww.unige.ch/~simond/Examples/PHP/php.iquest.net/intro.phtml
    ftp://ftp.lyx.org/pub/sgml-tools/website/HOWTO/PostgreSQL-HOWTO/t11084.html
* JS 1.0 https://web.archive.org/web/19970122130407/http://planetx.bloomu.edu:80/~mpscho/jsarchive/
## Commands

* Read nework doc: `zcat /usr/doc/NET-2-HOWTO.gz | less`

## Early PHP Tools snippet:

```
<!--include /text/header.html-->

<!--getenv HTTP_USER_AGENT-->
<!--if substr $exec_result Mozilla-->
  Hey, you are using Netscape!<p>
<!--endif-->

<!--sql database select * from table where user='$username'-->
<!--ifless $numentries 1-->
  Sorry, that record does not exist<p>
<!--endif exit-->
  Welcome <!--$user-->!<p>
  You have <!--$index:0--> credits left in your account.<p>

<!--include /text/footer.html-->
```

### Mini SQL support: 

http://moko.ru/doc/msql-manual/api.htm
