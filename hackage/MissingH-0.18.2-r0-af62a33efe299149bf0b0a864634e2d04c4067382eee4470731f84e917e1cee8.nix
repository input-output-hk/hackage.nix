{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "MissingH";
        version = "0.18.2";
      };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) 2004-2006 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://software.complete.org/missingh";
      url = "";
      synopsis = "Large utility library";
      description = "MissingH is a library of all sorts of utility functions for\nHaskell programmers.  It is written in pure Haskell and thus should\nbe extremely portable and easy to use.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.network)
          (hsPkgs.parsec)
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.mtl)
          (hsPkgs.HUnit)
          (hsPkgs.regex-compat)
          (hsPkgs.QuickCheck)
          (hsPkgs.FilePath)
          (hsPkgs.hslogger)
        ];
      };
      exes = {
        "runtests" = {
          depends  = [
            (hsPkgs.network)
            (hsPkgs.parsec)
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.mtl)
            (hsPkgs.HUnit)
            (hsPkgs.regex-compat)
            (hsPkgs.QuickCheck)
            (hsPkgs.FilePath)
            (hsPkgs.hslogger)
          ];
        };
      };
    };
  }