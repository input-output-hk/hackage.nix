{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "haskelldb-hsql-sqlite3";
        version = "0.10";
      };
      license = "BSD-3-Clause";
      copyright = "The authors";
      maintainer = "haskelldb-users@lists.sourceforge.net";
      author = "Daan Leijen, Conny Andersson, Martin Andersson, Mary Bergman, Victor Blomqvist, Bjorn Bringert, Anders Hockersten, Torbjorn Martin, Jeremy Shaw";
      homepage = "";
      url = "";
      synopsis = "HaskellDB support for the HSQL SQLite driver.";
      description = "";
      buildType = "Custom";
    };
    components = {
      "haskelldb-hsql-sqlite3" = {
        depends  = [
          (hsPkgs.haskell98)
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.haskelldb)
          (hsPkgs.haskelldb-hsql)
          (hsPkgs.hsql)
          (hsPkgs.hsql-sqlite3)
        ];
      };
    };
  }