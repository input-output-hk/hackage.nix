{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "vinyl";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "jonsterling@me.com";
      author = "Jonathan Sterling";
      homepage = "";
      url = "";
      synopsis = "Extensible Records";
      description = "Extensible records for Haskell with lenses using modern GHC features.";
      buildType = "Simple";
    };
    components = {
      "vinyl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.ghc-prim)
          (hsPkgs.mtl)
        ];
      };
    };
  }