# mono-build

mono-build provides a simple way to compile and install different versions of Mono on UNIX-like systems.

## Installing mono-build

    $ git clone git://github.com/dragan/mono-build.git
    $ cd mono-build
    $ ./install.sh

This will install mono-build into `/usr/local`. If you do not have write permission to `/usr/local`, you will need to run `sudo ./install.sh` instead. You can install to a different prefix by setting the `PREFIX` environment variable.

Included is an uninstall script as well, just run it to remove mono-build.

    $ ./uninstall.sh

## Installing Mono

To install a Mono version, run the `mono-build` command with the path to a definition file (A number of [built-in definitions](https://github.com/dragan/mono-build/tree/unstable/share/mono-build) may be specified instead.) and the path where you want to install it.

    $ mono-build 2.10.9 /Users/dragan/local/mono-2.10.9
    ...
    $ /Users/dragan/local/mono-2.10.9/bin/mono --version
    Mono JIT compiler version 2.10.9 (tarball Wed Apr 11 15:56:53 EDT 2012)
    Copyright (C) 2002-2011 Novell, Inc, Xamarin, Inc and Contributors. www.mono-project.com
    ...

## Thanks

This project was heavily inspired by the [ruby-build](https://github.com/sstephenson/ruby-build) project by Sam Stephenson. 

## License
mono-build is released under the [MIT License][mit-license]. See LICENSE for more information.

[mit-license]: http://www.opensource.org/licenses/mit-license.php