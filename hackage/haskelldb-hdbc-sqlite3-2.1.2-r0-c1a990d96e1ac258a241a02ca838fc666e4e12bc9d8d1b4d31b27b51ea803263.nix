{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "haskelldb-hdbc-sqlite3";
        version = "2.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "The authors";
      maintainer = "haskelldb-users@lists.sourceforge.net";
      author = "Daan Leijen, Conny Andersson, Martin Andersson, Mary Bergman, Victor Blomqvist, Bjorn Bringert, Anders Hockersten, Torbjorn Martin, Jeremy Shaw";
      homepage = "https://github.com/m4dc4p/haskelldb";
      url = "";
      synopsis = "HaskellDB support for the HDBC SQLite driver.";
      description = "HaskellDB requires this driver if HDBC will be used to connect to a SQLlite3 database.";
      buildType = "Simple";
    };
    components = {
      "haskelldb-hdbc-sqlite3" = {
        depends  = [
          (hsPkgs.mtl)
          (hsPkgs.haskelldb)
          (hsPkgs.haskelldb-hdbc)
          (hsPkgs.HDBC)
          (hsPkgs.HDBC-sqlite3)
          (hsPkgs.base)
        ];
      };
      exes = {
        "DBDirect-hdbc-sqlite3" = {};
      };
    };
  }