APACHE INSTALLATION OVERVIEW

  Quick Start - Unix
  ------------------

  For complete installation documentation, see [ht]docs/manual/install.html or
  http://httpd.apache.org/docs/2.4/install.html

     $ ./configure --prefix=PREFIX
     $ make
     $ make install
     $ PREFIX/bin/apachectl start

     NOTES: * Replace PREFIX with the filesystem path under which 
              Apache should be installed.  A typical installation
              might use "/usr/local/apache2" for PREFIX (without the
              quotes).

            * Consider if you want to use a previously installed APR and
              APR-Util (such as those provided with many OSes) or if you
              need to use the APR and APR-Util from the apr.apache.org
              project. If the latter, download the latest versions and
              unpack them to ./srclib/apr and ./srclib/apr-util (no
              version numbers in the directory names) and use
              ./configure's --with-included-apr option. This is required
              if you don't have the compiler which the system APR was
              built with.  It can also be advantageous if you are a
              developer who will be linking your code with Apache or using
              a debugger to step through server code, as it removes the
              possibility of version or compile-option mismatches with APR
              and APR-Util code. As a convenience, prepackaged source-code
              bundles of APR and APR-Util are occasionally also provided
              as a httpd-2.X.X-deps.tar.gz download.

            * If you are a developer building Apache directly from
              Subversion, you will need to run ./buildconf before running
              configure. This script bootstraps the build environment and
              requires Python as well as GNU autoconf and libtool. If you
              build Apache from a release tarball, you don't have to run
              buildconf.

            * If you want to build a threaded MPM (for instance worker)
              on  FreeBSD, be aware that threads do not work well with
              Apache on FreeBSD versions before 5.4-RELEASE. If you wish
              to try a threaded Apache on an earlier version of FreeBSD,
              use the --enable-threads parameter to ./configure in
              addition to the --with-mpm parameter.

            * If you are building directly from Subversion on Mac OS X
              (Darwin), make sure to use GNU Libtool 1.4.2 or newer. All
              recent versions of the developer tools on this platform
              include a sufficiently recent version of GNU Libtool (named
              glibtool, but buildconf knows where to find it).

  For a short impression of what possibilities you have, here is a
  typical example which configures Apache for the installation tree
  /sw/pkg/apache with a particular compiler and flags plus the two
  additional modules mod_rewrite and mod_speling for later loading
  through the DSO mechanism:

     $ CC="pgcc" CFLAGS="-O2" \
     ./configure --prefix=/sw/pkg/apache \
     --enable-rewrite=shared \
     --enable-speling=shared 

  The easiest way to find all of the configuration flags for Apache 2.4
  is to run ./configure --help.


  Quick Start - Windows
  ---------------------

  For complete documentation, see manual/platform/windows.html.en or
  <http://httpd.apache.org/docs/2.4/platform/windows.html>


  Postscript
  ----------

  To obtain help with installation problems, please see the resources at
  <http://httpd.apache.org/support.html>

  Thanks for using the Apache HTTP Server, version 2.4.

                                     The Apache Software Foundation
                                     http://www.apache.org/
