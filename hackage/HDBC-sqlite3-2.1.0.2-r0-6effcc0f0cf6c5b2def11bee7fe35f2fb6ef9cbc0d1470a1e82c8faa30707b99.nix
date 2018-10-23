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
        name = "HDBC-sqlite3";
        version = "2.1.0.2";
      };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2005-2009 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://software.complete.org/hdbc-sqlite3";
      url = "";
      synopsis = "Sqlite v3 driver for HDBC";
      description = "This is the Sqlite v3 driver for HDBC, the generic\ndatabase access system for Haskell";
      buildType = "Simple";
    };
    components = {
      "HDBC-sqlite3" = {
        depends  = ([
          (hsPkgs.mtl)
          (hsPkgs.HDBC)
          (hsPkgs.utf8-string)
        ] ++ (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.bytestring)
          ]
          else [
            (hsPkgs.base)
          ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.9") (hsPkgs.base);
        libs = [ (pkgs."sqlite3") ];
      };
      exes = {
        "runtests" = {
          depends  = pkgs.lib.optionals (flags.buildtests) [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.testpack)
            (hsPkgs.containers)
            (hsPkgs.convertible)
            (hsPkgs.old-time)
            (hsPkgs.time)
            (hsPkgs.old-locale)
          ];
          libs = [ (pkgs."sqlite3") ];
        };
      };
    };
  }