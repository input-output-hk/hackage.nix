{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "MissingH";
          version = "1.1.0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "Copyright (c) 2004-2009 John Goerzen";
        maintainer = "John Goerzen <jgoerzen@complete.org>";
        author = "John Goerzen";
        homepage = "http://software.complete.org/missingh";
        url = "";
        synopsis = "Large utility library";
        description = "MissingH is a library of all sorts of utility functions for\nHaskell programmers.  It is written in pure Haskell and thus should\nbe extremely portable and easy to use.";
        buildType = "Simple";
      };
      components = {
        MissingH = {
          depends  = ([
            hsPkgs.network
            hsPkgs.parsec
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.mtl
            hsPkgs.HUnit
            hsPkgs.regex-compat
            hsPkgs.QuickCheck
            hsPkgs.filepath
            hsPkgs.hslogger
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.random
              hsPkgs.process
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.old-locale
              hsPkgs.array
            ]
            else [
              hsPkgs.base
            ])) ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
        exes = {
          runtests = {
            depends  = [
              hsPkgs.testpack
              hsPkgs.QuickCheck
              hsPkgs.HUnit
            ];
          };
        };
      };
    }