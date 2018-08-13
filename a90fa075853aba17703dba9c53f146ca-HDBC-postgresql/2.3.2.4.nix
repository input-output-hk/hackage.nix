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
      mintime15 = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "HDBC-postgresql";
        version = "2.3.2.4";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2005-2011 John Goerzen";
      maintainer = "Nicolas Wu <nicolas.wu@gmail.com>";
      author = "John Goerzen";
      homepage = "http://github.com/hdbc/hdbc-postgresql";
      url = "";
      synopsis = "PostgreSQL driver for HDBC";
      description = "This package provides a PostgreSQL driver for HDBC";
      buildType = "Custom";
    };
    components = {
      "HDBC-postgresql" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.HDBC)
          (hsPkgs.parsec)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
          (hsPkgs.old-time)
          (hsPkgs.convertible)
        ] ++ (if _flags.mintime15
          then [ (hsPkgs.time) ]
          else [
            (hsPkgs.time)
            (hsPkgs.old-locale)
          ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.9") (hsPkgs.base);
        libs = [ (pkgs."pq") ];
      };
      exes = {
        "runtests" = {
          depends  = pkgs.lib.optionals (_flags.buildtests) ([
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.testpack)
            (hsPkgs.containers)
            (hsPkgs.convertible)
            (hsPkgs.parsec)
            (hsPkgs.utf8-string)
            (hsPkgs.bytestring)
            (hsPkgs.old-time)
            (hsPkgs.base)
            (hsPkgs.HDBC)
          ] ++ (if _flags.mintime15
            then [ (hsPkgs.time) ]
            else [
              (hsPkgs.time)
              (hsPkgs.old-locale)
            ]));
          libs = [ (pkgs."pq") ];
        };
      };
    };
  }