{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "linux-inotify";
          version = "0.3.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013-2015 Leon P Smith";
        maintainer = "leon@melding-monads.com";
        author = "Leon P Smith";
        homepage = "";
        url = "";
        synopsis = "Thinner binding to the Linux Kernel's inotify interface";
        description = "This is a binding for GHC 7 to the Linux Kernel's inotify interface,\nwhich provides notifications to applications regarding file system\nevents,  such as file creation,  modification, deletion,  etc.\n\nSome of the advantages over hinotify are:\n\n1.  linux-inotify provides a plain getEvent operator that blocks,\ninstead of implementing a callback API.\n\n2.  linux-inotify avoids most of GHC's standard IO handling code,\nrelying on plain system calls with minimal overhead in Haskell-land.\n(However, it still does make good use of GHC's IO manager via\nnonblocking inotify sockets and threadWaitRead,  so getEvent is\nstill efficient.)\n\n3.  linux-inotify does not call forkIO, which means less context\nswitching and scheduling overhead, especially in contexts where\nhinotify's particular event router isn't a very good fit for\nyour application;  e.g. you are implementing a following log file\nprocessor.\n\nSome of the disadvantages compared to hinotify are:\n\n1.   Due to the use of `inotify_init1`,  `linux-inotify` currently\nrequires linux 2.6.27 or later,  even though `inotify` support\ndebuted in linux 2.6.13.   You can check which version of linux is\non a machine via `uname` `-a`.   I would like to fix this at some point,\nbut it isn't a personal priority.\n\n2.   `linux-inotify` requires GHC 7.8.1 or later,  whereas `hinotify`\nworks with many versions of GHC 6.   I have no plans to fix this.";
        buildType = "Simple";
      };
      components = {
        "linux-inotify" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.hashable
            hsPkgs.unix
          ];
        };
      };
    }