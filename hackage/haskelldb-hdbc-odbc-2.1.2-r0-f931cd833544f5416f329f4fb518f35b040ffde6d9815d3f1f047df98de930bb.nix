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
        name = "haskelldb-hdbc-odbc";
        version = "2.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "The authors";
      maintainer = "haskelldb-users@lists.sourceforge.net";
      author = "Daan Leijen, Conny Andersson, Martin Andersson, Mary Bergman, Victor Blomqvist, Bjorn Bringert, Anders Hockersten, Torbjorn Martin, Jeremy Shaw";
      homepage = "https://github.com/m4dc4p/haskelldb";
      url = "";
      synopsis = "HaskellDB support for the HDBC ODBC driver.";
      description = "HaskellDB requires this driver if HDBC will be used to connect to an ODBC database.";
      buildType = "Simple";
    };
    components = {
      "haskelldb-hdbc-odbc" = {
        depends  = [
          (hsPkgs.mtl)
          (hsPkgs.haskelldb)
          (hsPkgs.haskelldb-hdbc)
          (hsPkgs.HDBC)
          (hsPkgs.HDBC-odbc)
          (hsPkgs.base)
        ];
      };
      exes = {
        "DBDirect-hdbc-odbc" = {};
      };
    };
  }