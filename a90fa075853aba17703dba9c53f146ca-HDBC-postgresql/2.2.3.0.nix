{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      splitbase = true;
      buildtests = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "HDBC-postgresql";
        version = "2.2.3.0";
      };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2005-2010 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://software.complete.org/hdbc-postgresql";
      url = "";
      synopsis = "PostgreSQL driver for HDBC";
      description = "This package provides a PostgreSQL driver for HDBC";
      buildType = "Custom";
    };
    components = {
      "HDBC-postgresql" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.HDBC)
          (hsPkgs.parsec)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
          (hsPkgs.old-time)
          (hsPkgs.old-locale)
          (hsPkgs.time)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.9") (hsPkgs.base);
        libs = [ (pkgs.pq) ];
      };
      exes = {
        "runtests" = {
          depends  = pkgs.lib.optionals (_flags.buildtests) [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.testpack)
            (hsPkgs.containers)
            (hsPkgs.convertible)
            (hsPkgs.time)
            (hsPkgs.old-locale)
          ];
          libs = [ (pkgs.pq) ];
        };
      };
    };
  }