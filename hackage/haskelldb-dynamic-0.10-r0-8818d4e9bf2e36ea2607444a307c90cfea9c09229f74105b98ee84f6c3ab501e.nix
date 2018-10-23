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
        name = "haskelldb-dynamic";
        version = "0.10";
      };
      license = "BSD-3-Clause";
      copyright = "The authors";
      maintainer = "haskelldb-users@lists.sourceforge.net";
      author = "Daan Leijen, Conny Andersson, Martin Andersson, Mary Bergman, Victor Blomqvist, Bjorn Bringert, Anders Hockersten, Torbjorn Martin, Jeremy Shaw";
      homepage = "";
      url = "";
      synopsis = "HaskellDB support for the dynamically loaded drivers.";
      description = "";
      buildType = "Custom";
    };
    components = {
      "haskelldb-dynamic" = {
        depends  = [
          (hsPkgs.haskell98)
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.haskelldb)
          (hsPkgs.plugins)
        ];
      };
      exes = {
        "DBDirect" = {
          depends  = [
            (hsPkgs.haskell98)
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.haskelldb)
            (hsPkgs.plugins)
          ];
        };
      };
    };
  }