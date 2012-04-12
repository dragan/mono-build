# mono-build

mono-build provides a simple way to compile and install different versions of Mono on UNIX-like systems.

## Installing Mono

To install a Mono version, run the `mono-build` command with the path to a definition file and the path where you want to install it.

    $ mono-build ../definitions/2.10.9 /Users/dragan/local/mono-2.10.9
    ...
    $ /Users/dragan/local/mono-2.10.9/bin/mono --version
    Mono JIT compiler version 2.10.9 (tarball Wed Apr 11 15:56:53 EDT 2012)
    Copyright (C) 2002-2011 Novell, Inc, Xamarin, Inc and Contributors. www.mono-project.com
    ...

## License
mono-build is released under the [MIT License][mit-license]. See LICENSE for more information.

[mit-license]: http://www.opensource.org/licenses/mit-license.php