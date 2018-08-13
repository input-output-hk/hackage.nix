{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "liboleg";
        version = "2010.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Don Stewart <dons@galois.com>";
      author = "Oleg Kiselyov";
      homepage = "http://okmij.org/ftp/";
      url = "";
      synopsis = "A collection of Oleg Kiselyov's Haskell modules (2008-2010)";
      description = "A collection of Oleg Kiselyov's Haskell modules (2008-2010) (released with his permission)";
      buildType = "Simple";
    };
    components = {
      "liboleg" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.unix)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }