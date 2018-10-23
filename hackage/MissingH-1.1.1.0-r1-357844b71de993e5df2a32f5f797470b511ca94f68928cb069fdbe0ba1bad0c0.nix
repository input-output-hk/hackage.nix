{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      splitbase = true;
      buildtests = false;
    };
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "MissingH";
        version = "1.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2004-2011 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://software.complete.org/missingh";
      url = "";
      synopsis = "Large utility library";
      description = "MissingH is a library of all sorts of utility functions for\nHaskell programmers.  It is written in pure Haskell and thus should\nbe extremely portable and easy to use.";
      buildType = "Simple";
    };
    components = {
      "MissingH" = {
        depends  = ([
          (hsPkgs.network)
          (hsPkgs.parsec)
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.HUnit)
          (hsPkgs.regex-compat)
          (hsPkgs.filepath)
          (hsPkgs.hslogger)
        ] ++ (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.random)
            (hsPkgs.process)
            (hsPkgs.old-time)
            (hsPkgs.containers)
            (hsPkgs.old-locale)
            (hsPkgs.array)
          ]
          else [
            (hsPkgs.base)
          ])) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      exes = {
        "runtests" = {
          depends  = pkgs.lib.optionals (flags.buildtests) [
            (hsPkgs.testpack)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }