{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
      buildtests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hslogger";
          version = "1.0.10";
        };
        license = "LicenseRef-LGPL";
        copyright = "Copyright (c) 2004-2010 John Goerzen";
        maintainer = "John Goerzen <jgoerzen@complete.org>";
        author = "John Goerzen";
        homepage = "http://software.complete.org/hslogger";
        url = "";
        synopsis = "Versatile logging framework";
        description = "hslogger is a logging framework for Haskell, roughly similar to\nPython's logging module.\n\nhslogger lets each log message have a priority and source be associated\nwith it.  The programmer can then define global handlers that route\nor filter messages based on the priority and source.  hslogger also\nhas a syslog handler built in.";
        buildType = "Simple";
      };
      components = {
        hslogger = {
          depends  = ([
            hsPkgs.network
            hsPkgs.mtl
          ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix) ++ (if _flags.small_base
            then [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.time
              hsPkgs.old-locale
            ]
            else [
              hsPkgs.base
              hsPkgs.time
            ]);
        };
        exes = { runtests = {}; };
      };
    }