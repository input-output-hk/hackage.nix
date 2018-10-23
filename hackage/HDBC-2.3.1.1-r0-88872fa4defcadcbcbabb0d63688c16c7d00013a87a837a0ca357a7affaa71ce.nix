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
      time_gte_113 = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "HDBC";
        version = "2.3.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2005-2011 John Goerzen";
      maintainer = "Nicolas Wu <nick@well-typed.com>";
      author = "John Goerzen";
      homepage = "https://github.com/hdbc/hdbc";
      url = "";
      synopsis = "Haskell Database Connectivity";
      description = "HDBC provides an abstraction layer between Haskell programs and SQL\nrelational databases. This lets you write database code once, in\nHaskell, and have it work with any number of backend SQL databases\n(MySQL, Oracle, PostgreSQL, ODBC-compliant databases, etc.)";
      buildType = "Simple";
    };
    components = {
      "HDBC" = {
        depends  = ([
          (hsPkgs.mtl)
          (hsPkgs.convertible)
          (hsPkgs.text)
          (hsPkgs.utf8-string)
        ] ++ (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.old-time)
            (hsPkgs.time)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.old-locale)
          ] ++ [ (hsPkgs.time) ]
          else [
            (hsPkgs.base)
          ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.9") (hsPkgs.base);
      };
      exes = {
        "runtests" = {
          depends  = pkgs.lib.optionals (flags.buildtests) (([
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.testpack)
            (hsPkgs.mtl)
            (hsPkgs.convertible)
            (hsPkgs.utf8-string)
            (hsPkgs.text)
          ] ++ (if flags.splitbase
            then [
              (hsPkgs.base)
              (hsPkgs.old-time)
              (hsPkgs.time)
              (hsPkgs.bytestring)
              (hsPkgs.containers)
              (hsPkgs.old-locale)
            ] ++ [ (hsPkgs.time) ]
            else [
              (hsPkgs.base)
            ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.9") (hsPkgs.base));
        };
      };
    };
  }