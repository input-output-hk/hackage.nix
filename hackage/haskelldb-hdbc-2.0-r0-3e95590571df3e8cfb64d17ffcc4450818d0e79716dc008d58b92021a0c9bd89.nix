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
        name = "haskelldb-hdbc";
        version = "2.0";
      };
      license = "BSD-3-Clause";
      copyright = "The authors";
      maintainer = "haskelldb-users@lists.sourceforge.net";
      author = "Daan Leijen, Conny Andersson, Martin Andersson, Mary Bergman, Victor Blomqvist, Bjorn Bringert, Anders Hockersten, Torbjorn Martin, Jeremy Shaw";
      homepage = "http://trac.haskell.org/haskelldb";
      url = "";
      synopsis = "HaskellDB support for HDBC.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "haskelldb-hdbc" = {
        depends  = [
          (hsPkgs.mtl)
          (hsPkgs.haskelldb)
          (hsPkgs.HDBC)
          (hsPkgs.convertible)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.old-time)
        ];
      };
    };
  }